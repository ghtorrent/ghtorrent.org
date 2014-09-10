#
# (c) 2012 -- 2014 Georgios Gousios <gousiosg@gmail.com>
#
# BSD licensed, see LICENSE in top level dir
#


rm(list = ls(all = TRUE))

if (! "knitr" %in% installed.packages()) install.packages("knitr", src=TRUE)
if (! "RMySQL" %in% installed.packages()) install.packages("RMySQL")
if (! "ggplot2" %in% installed.packages()) install.packages("ggplot2")
if (! "reshape" %in% installed.packages()) install.packages("reshape")
if (! "sqldf" %in% installed.packages()) install.packages("sqldf")
if (!"optparse" %in% installed.packages()) install.packages("optparse")

library(optparse)

mysql.user =  "foo"
mysql.passwd = "bar"
mysql.db = "ghtorrent"
mysql.host = "127.0.0.1"

option_list <- list(
  make_option(c("-s", "--mysql-host"), default=mysql.host, dest = 'mysql.host',
              help = "MySQL host [\"%default\"]"),
  make_option(c("-d", "--mysql-db"), default=mysql.db, dest = 'mysql.db',
              help = "MySQL database [\"%default\"]"),
  make_option(c("-u", "--mysql-user"), default=mysql.user, dest = 'mysql.user',
              help = "MySQL user [\"%default\"]"),
  make_option(c("-p", "--mysql-passwd"), default=mysql.passwd, dest = 'mysql.passwd', help = "MySQL password [\"%default\"]")
)

args <- parse_args(OptionParser(option_list = option_list), 
                                print_help_and_exit = FALSE, 
                                positional_arguments = TRUE) 

if (args$options$help == TRUE) {
    parse_args(OptionParser(option_list = option_list))
}

mysql.user    = args$options$mysql.user
mysql.passwd  = args$options$mysql.passwd
mysql.db      = args$options$mysql.db
mysql.host    = args$options$mysql.host

# Genearte stats
library(RMySQL)
library(knitr)

stats <- function(owner, repo) {
  dirname = sprintf("%s-%s", owner,repo)
  print(sprintf("Running in %s", dirname))
  cwd <- getwd()
  dir.create(dirname)
  file.copy("report.Rmd", sprintf("%s/%s", dirname, "index.Rmd"))
  setwd(dirname)
  
  tryCatch({
    knit("index.Rmd")
    file.remove(sprintf("%s/%s", dirname, "index.Rmd"))
  }, error = function(e) {
    print(e)
    setwd(cwd)
    unlink(dirname, TRUE, TRUE)
  }, finally = {
    setwd(cwd)
  })
}

db <<- dbConnect(dbDriver("MySQL"), 
                 user = mysql.user, 
                 password = mysql.passwd, 
                 dbname = mysql.db,
                 host = mysql.host)

if (length(args$args) == 0) {
  projects <- read.csv('projects.txt', sep = ' ')
  print(sprintf("%s projects to analyze", nrow(projects)))
  knit("index.Rmd")
  projects$done <- apply(projects, 1, function(x){stats(x[1],x[2])})
} else {
  stats(strsplit(args$args, " ")[1], strsplit(args$args, " ")[2]) 
}
