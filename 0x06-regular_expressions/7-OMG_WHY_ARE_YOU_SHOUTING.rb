#!/usr/bin/env ruby
# regular expression must b only matchng:capital letters,omg y are u shouting?
puts ARGV[0].scan(/[A-Z]/).join
