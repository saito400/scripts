#!/usr/bin/env ruby

# prepare
# gem install mysql2

require 'mysql2'

HOST = 'localhost'
USER = 'root'
DB = 'test_db'

client = Mysql2::Client.new(:host => HOST, :username => USER, :database => DB)

v1 = 100
v2 = client.escape('abc')
client.query("INSERT INTO test (id, value) VALUES (#{v1},'#{v2}')")


