#!/usr/bin/env ruby

require 'erb'
require 'net/http'
require 'json'

url = 'https://api.spotify.com/v1/search?type=artist&q='
param = 'maroon 5'

uri = URI(url + ERB::Util.url_encode(param))

response = Net::HTTP.get(uri)
json = JSON.parse(response)

p json
p json.fetch("artists")

