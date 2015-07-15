#!/usr/bin/env ruby

require 'yaml'

node = ARGV[0]

default = { 'environment' => 'test' }
	
	unless node =~ /(^\S+)\.(\S+\.\S+)$/
	puts 'Not a proper FQDN'
	exit 0
	end

hostname = $1

case hostname 
	when /dev.*07/
		dev07 = { 'environment' => 'dev07' }
		puts YAML.dump(dev07)
	when /dev.*08/
		dev08 = { 'environment' => 'dev08' }
		puts YAML.dump(dev08)
	when /dev.*09/
		dev09 = { 'environment' => 'dev09' }
		puts YAML.dump(dev09)
	when /dev.*10/
		dev10 = { 'environment' => 'dev10' }
		puts YAML.dump(dev10)
	else
		print default.to_yaml
	end
exit 0
