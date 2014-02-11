#!/usr/bin/env  rvm 2.0.0@palindrome do ruby

# require File.join(File.dirname(__FILE__), 'example','code')
require 'palindrome/code'
require 'pry'
require 'optparse'


def main_menu
  puts "Enter word or phrase to see if its a palondrome.(q,quit,exit to quit): \r"
  words = $stdin.gets.chomp
  words
end

def quitting(input)
  %w{q quit exit}.include? input
end

def the_question_loop(soloution_class)
  done = false
  while !done
    resp = main_menu
    if resp != ""
      if quitting(resp)
        done = true
      else
        if soloution_class.check(resp)
          puts "This is a palondrome."
        else
          puts "This is not a palondrome."
        end
      end
    else
      puts "Please enter a phrase!!"
    end
  end
end


options = {}

opt_parser = OptionParser.new do |opt|
  opt.banner = "Usage: example COMMAND [OPTIONS]"
  opt.separator  ""
  opt.separator  "Commands"
  opt.separator  "     one: palondrome method one."
  opt.separator  "     two: palondrome method two."
  opt.separator  ""
  opt.separator  "Options"

  # opt.on("-e","--environment ENVIRONMENT","which environment you want server run") do |environment|
  #   options[:environment] = environment
  # end

  # opt.on("-v","--verbose","shall I explain each step?") do
  #   options[:verbose] = true
  # end

  opt.on("-h","--help","help") do
    puts opt_parser
  end
end

opt_parser.parse!

case ARGV[0]
when "one"
  the_question_loop(Palindrome::Solution1)
when "two"
  the_question_loop(Palindrome::Solution2)
when "egg"
  puts "insert easter egg here #{options.inspect}"
else
  puts opt_parser
end

