#!/usr/bin/env ruby

require 'bloops'


def make_instrument!
  bleep = Bloops.new
  bleep.tempo = 120

  instrument = bleep.sound Bloops::SINE

  [bleep, instrument]
end

while song = gets.strip
  bleep, instrument = make_instrument!
  puts "playing: #{song}"
  bleep.tune(instrument, song)
  bleep.play
  sleep 1 while !bleep.stopped?
end
