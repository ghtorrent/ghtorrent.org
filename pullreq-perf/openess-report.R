#
# (c) 2012 -- 2014 Georgios Gousios <gousiosg@gmail.com>
#
# BSD licensed, see LICENSE in top level dir
#


rm(list = ls(all = TRUE))

if (! "knitr" %in% installed.packages()) install.packages("knitr")
if (! "RMySQL" %in% installed.packages()) install.packages("RMySQL")
if (! "ggplot2" %in% installed.packages()) install.packages("ggplot2")
if (! "reshape" %in% installed.packages()) install.packages("reshape")
if (! "sqldf" %in% installed.packages()) install.packages("sqldf")
if (! "optparse" %in% installed.packages()) install.packages("optparse")
if (! "foreach" %in% installed.packages()) install.packages("foreach")
if (! "doMC" %in% installed.packages()) install.packages("doMC")

library(optparse)

mysql.user   =  "foo"
mysql.passwd = "bar"
mysql.db     = "ghtorrent"
mysql.host   = "127.0.0.1"
paralll      = 4

option_list <- list(
  make_option(c("-s", "--mysql-host"), default=mysql.host, dest = 'mysql.host',
              help = "MySQL host [\"%default\"]"),
  make_option(c("-d", "--mysql-db"), default=mysql.db, dest = 'mysql.db',
              help = "MySQL database [\"%default\"]"),
  make_option(c("-u", "--mysql-user"), default=mysql.user, dest = 'mysql.user',
              help = "MySQL user [\"%default\"]"),
  make_option(c("-p", "--mysql-passwd"), default=mysql.passwd, dest = 'mysql.passwd', help = "MySQL password [\"%default\"]"),
  make_option(c("-a", "--parallel"), default=paralll, dest = 'paralll', help = "Number of processes [\"%default\"]")

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
paralll       = args$options$paralll

# Genearte stats
library(RMySQL)
library(knitr)

stats <- function(owner, repo) {

  db <- dbConnect(dbDriver("MySQL"),
                  user = mysql.user,
                  password = mysql.passwd,
                  dbname = mysql.db,
                  host = mysql.host)

  dirname = sprintf("%s-%s", owner,repo)
  print(sprintf("Running in %s", dirname))
  cwd <- getwd()
  dir.create(dirname)
  file.copy("report.Rmd", sprintf("%s/%s", dirname, "index.Rmd"))
  setwd(dirname)

  tryCatch({
    knit("index.Rmd")
    file.remove("index.Rmd")
  }, error = function(e) {
    print(e)
    setwd(cwd)
    unlink(dirname, TRUE, TRUE)
  }, finally = {
    dbDisconnect(db)
    setwd(cwd)
  })
}

if (length(args$args) == 0) {
  library(doMC)
  registerDoMC(paralll)

  projects <- read.csv('projects.txt', sep = ' ')

  print(sprintf("%s projects to analyze", nrow(projects)))
  print(sprintf("Running %d parallel processes", paralll))
  knit("index.Rmd")

  result <- foreach(n=1:nrow(projects), .combine='+') %dopar% {
    project <- projects[n, ]
    stats(project[,1], project[,2])
    1
  }
  print(sprintf("processed %d projects", result))

} else {
  stats(strsplit(args$args, " ")[1], strsplit(args$args, " ")[2])
}
