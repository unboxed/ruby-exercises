require 'highline'

cli = HighLine.new

name = cli.ask "What is your name?"

puts "Hello #{name}"