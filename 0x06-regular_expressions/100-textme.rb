#!/usr/bin/env ruby
# script output: [SENDER],[RECEIVER],[FLAGS] of sender and receiver no" + 
# name (including country code if present),The flags that were used ,TExTME
puts ARGV[0]
	.scan(/(?<=from:|to:|flags:).*?(?=\])/)
	.join(',')
