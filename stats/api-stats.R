# Run this to create the data file
# cat */log.txt |grep APIClient|grep -v WARN |perl -lape 's/\[([T0-9-:.]*).*\] DEBUG.*\[([0-9.]*)\].*Total: ([0-9]*) ms/$1 $2 $3/'|cut -f2,3,4 -d' '|ruby -ne 'BEGIN{require "time"}; t,i,d=$_.split(/ /); print Time.parse(t).to_i," ", i, " ", d;' |egrep -v "#" >data.txt  
library(ggplot2)
library(sqldf)
require(scales)

data <- read.csv("data.txt", sep=" ", colClasses = c("integer", "factor", "integer"))
# Filter out data older than 3 days
data <- subset(data, ts > (as.numeric(Sys.time()) - 3 * 86400))
data$ts <- as.POSIXct(data$ts, origin = "1970-01-01")
summary(data$ms)

p <- ggplot(data) + aes(x = ip, y = ms) + scale_y_log10() + geom_boxplot() + theme(axis.text.x = element_text(angle = 90, hjust = 1))
png("resp-ip-boxplot.png")
print(p)
dev.off()

# Total num requests per IP
aggregate(ms ~ ip, data = data, length)

# Mean time per IP
aggregate(ms ~ ip, data = data, mean)

data$timebin <- cut.POSIXt(data$ts, breaks = "10 mins")

mean.interval <- aggregate(ms ~ timebin, data = data, mean)
mean.interval$timebin <- as.POSIXct(mean.interval$timebin, origin = "1970-01-01")

p <- ggplot(mean.interval) + aes(x = timebin, y = ms) + geom_line() + scale_x_datetime() +
  xlab('time') + ylab('Mean API resp in ms') + ggtitle('Mean API response time timeseries (10 min intervals)')

png("api-resp.png")
print(p)
dev.off()

data$timebin <- cut.POSIXt(data$ts, breaks = "30 mins")
count.interval <- aggregate(ms ~ timebin, data = data, length)
count.interval$timebin <- as.POSIXct(count.interval$timebin, origin = "1970-01-01")
p <- ggplot(count.interval) + aes(x = timebin, y = ms) + geom_line() + scale_x_datetime() + scale_y_continuous(labels = comma) +  
  stat_smooth(method = "loess", formula = y ~ x^2, size = 2, alpha = 0)+xlab('time') + ylab('Num API calls') + ggtitle('Num API calls per timeslot (30 mins interval)')

png("num-reqs.png")
print(p)
dev.off()

events <- read.csv("events.txt", sep=" ", colClasses = c("integer", "factor"))
# Filter out data older than 3 days
events <- subset(events, ts > (as.numeric(Sys.time()) - 3 * 86400))
events$ts <- as.POSIXct(events$ts, origin = "1970-01-01")
summary(events$ts)

events$timebin <- cut.POSIXt(events$ts, breaks = "1 day")

groupped <- sqldf("select timebin,event,count(*) as number from events group by timebin,event")

p <- ggplot(groupped) + aes(x = timebin, y = number, fill = event) +
     scale_y_continuous(labels = comma) +
     geom_bar(stat = "identity", position="dodge") +
     xlab('day') + ylab('Num events') + 
     ggtitle('Number of events processed per day')

png("events-per-day.png")
print(p)
dev.off()

