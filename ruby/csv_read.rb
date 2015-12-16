#!/usr/bin/env ruby

require "csv"

if ARGV.length != 1 then
  puts "usage : ruby #{__FILE__} csv_file_name"
  exit 1
end

CSV.foreach(ARGV[0]) do |row|
    p row
end

