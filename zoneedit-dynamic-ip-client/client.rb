#!/usr/bin/env ruby
require "open-uri"
username = "YOUR_USERNAME"
password = "YOUR_PASSWORD"
hosts = "YOUR_HOSTS"

open('http://ip.moe.ee') do |f|
  ip = f.gets
  auth_url = "https://dynamic.zoneedit.com/auth/dynamic.html?host=#{hosts}&dnsto=#{ip}"
  `curl -s -u #{username}:#{password} '#{auth_url}'`
end
