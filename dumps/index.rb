#!/usr/bin/env ruby

require 'rubygems'
require 'erb'
require 'set'
require 'date'

class GHTorrent
  attr_reader :collections
  attr_reader :dumps
  
  def initialize(last_update)
    @last_update = last_update
    @dumps = Set.new
    @collections = Set.new
  end

  def add_dump(dump)
    @dumps << dump
  end

  def add_collection(col)
    @collections << col
  end

  # Expose private binding() method.
  def get_binding
    binding()
  end

end

class Dump
  attr_reader :torrents
  attr_reader :date
  
  def initialize(torrents, date)
    @torrents = torrents
    @date = date
  end
end

class Torrent
  attr_reader :url
  attr_reader :name
  attr_reader :size
  attr_reader :date
  def initialize(url, name, size, date)
    @url = url
    @name = name
    @size = size
    @date = date
  end
end

url_prefix="http://ghtorrent.org/downloads"

# Load the template
file = File.open("index.erb").read
rhtml = ERB.new(file)

# Open the dir to read entries from
dir = ARGV.shift

if dir.nil?
  dir = "."
end

torrents = Dir.entries("#{dir}").map do |f|

  # Go through all torrent files and extract name of
  # dumped collection and dump date
  matches = /([a-z0-9_]+)-[a-z]+\.(.*)\.torrent/.match(f)
  next if matches.nil?

  # Calculate original file size
  dump = f.gsub(/.torrent/, ".tar.gz")
  size = File.stat(File.join(dir, dump)).size / 1024 / 1024
  
  date = Date.parse(matches[2])  
  
  if size > 0
    Torrent.new(url_prefix + "/" + dump, matches[1], size, date)
  end
end.select{|x| !x.nil?}

all_dates = torrents.inject(Set.new){|acc, t| acc << t.date}

all_dumps = all_dates.map{ |d|
  date_torrents = torrents.select{|t| t.date == d}
  name_torrents = date_torrents.inject(Hash.new){|acc, a| acc.store(a.name, a); acc}
  Dump.new(name_torrents, d)
}

max_date = all_dates.max{ |a,b| a <=> b}

ghtorrent = GHTorrent.new(max_date)
all_dumps.each { |x|
  ghtorrent.add_dump x
  x.torrents.values.each { |t|
    ghtorrent.add_collection t.name
  }
}

puts rhtml.result(ghtorrent.get_binding).gsub(/^\s+/, "").gsub(/\s+$/, $/).gsub(/<table>/, "\n<table>")
# vim: set sta sts=2 shiftwidth=2 sw=2 et ai :
