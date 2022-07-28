#!/usr/bin/env ruby
# accept one argument,pass it 2 regular xpression matchng method,repetion token
puts ARGV[0].scan(/hbtt{1,4}n/).join
