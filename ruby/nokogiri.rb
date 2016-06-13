# coding: utf-8

require 'open-uri'
require 'nokogiri'
require 'uri'

keywords = ['ruby','nokogiri']
param = keywords.join("+")

url = URI.escape("http://search.yahoo.co.jp/search?p=#{param}")

charset = nil
html = open(url, 'User-Agent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36)') do |f|
  charset = f.charset
  f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

href = doc.xpath('//h3[1]/a/@href')[0].value

uri = URI.parse(href)

p uri.host
