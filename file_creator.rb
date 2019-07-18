#!/usr/bin/ruby

# require 'pry'
require 'fileutils'

puts "Enter a file name"

file = gets.chomp

FileUtils.cd("../")
FileUtils.mkdir("#{file}")
FileUtils.cd("#{file}")
FileUtils.mkdir("lib")
FileUtils.mkdir("spec")
FileUtils.touch("lib/#{file}.rb")
File.write("lib/#{file}.rb", "#!/usr/bin/ruby
  require 'pry'
  require ''")
FileUtils.touch("spec/#{file}_spec.rb")
File.write("spec/#{file}_spec.rb", "require 'rspec'
require '#{file}'

describe('#{file}') do
expect().to(eq())
end")
FileUtils.touch("Gemfile")
File.write('Gemfile', "source 'https://rubygems.org'

gem 'rspec'
gem 'pry'")
