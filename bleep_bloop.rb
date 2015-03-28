#!/usr/bin/env ruby

require 'bloops'


def make_instrument!
  bleep = Bloops.new
  bleep.tempo = 120

  instrument = bleep.sound Bloops::SINE

  [bleep, instrument]
end

loop do
  print '🎼 '
  song = gets.strip
  bleep, instrument = make_instrument!
  puts "🔊 #{song}"
  bleep.tune(instrument, song)
  bleep.play
  sleep 1 while !bleep.stopped?
end
