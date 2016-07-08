#!/usr/bin/env ruby
# coding: utf-8

if ARGV.length != 1 then
  puts "usage : ruby #{__FILE__} file_name"
  exit 1
end

begin

  File.foreach(ARGV[0]) do |line|
    p line.gsub(/\\u([\da-fA-F]{4})/) { [$1].pack('H*').unpack('n*').pack('U*') }
  end

rescue => e
  puts e
end

