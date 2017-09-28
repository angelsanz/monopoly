# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'monopoly'
  s.version     = '0.0.0'
  s.date        = '2015-09-25'
  s.summary     = 'Monopoly domain logic'
  s.description = 'Monopoly domain logic'
  s.authors     = ['Rubén Antón', 'Angel Sanz', 'Xavi Gost']
  s.email       = 'rubocoptero@gmail.com'
  s.files       = ['lib/monopoly.rb']
  s.files        = Dir.glob("lib/**/*")
  s.homepage    = 'https://github.com/rubocoptero/monopoly'
  s.license     = 'MIT'
end