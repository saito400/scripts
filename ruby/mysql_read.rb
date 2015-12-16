#!/usr/bin/env ruby

# prepare
# gem install mysql2

require 'mysql2'

HOST = 'localhost'
USER = 'root'
DB = 'test_db'

client = Mysql2::Client.new(:host => HOST, :username => USER, :database => DB)

client.query("SELECT id,value FROM test").each do |row|
  puts row["value"]
end

