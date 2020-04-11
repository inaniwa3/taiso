#! /usr/bin/env ruby

require 'erb'
require 'yaml'

STDOUT.binmode

erb = File.read('part.erb')
YAML.load_file('list.yml').each do |y|
  html = ERB.new(erb).result(binding)
  puts html
end
