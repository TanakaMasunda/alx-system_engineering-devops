#!/usr/bin/env ruby
# regex should not contain square brackets, repetition token3
puts ARGV[0].scan(/hbt*n/).join
