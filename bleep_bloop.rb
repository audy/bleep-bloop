#!/usr/bin/env ruby

require 'bloops'

bleep = Bloops.new

bleep.tempo = [60, 120, 240].sample
l = %w{a b c d e f g}
song = (5..10).to_a.sample.times.map { l.sample }.map { |x| "#{x}#{(3..5).to_a.sample}" }.join(' ')

instrument = bleep.sound [Bloops::SINE, Bloops::SQUARE].sample

instrument.punch = rand*0.25 + 0.5
instrument.sustain = 1
instrument.decay = rand*0.25 + 0.5
instrument.arp = rand*0.25 + 0.5
instrument.aspeed = rand*0.25 + 0.5
#instrument.repeat = rand*0.25 + 0.5 # makes everything the same tone
instrument.phase = rand*0.25 + 0.5
instrument.psweep = rand*0.25 + 0.5

bleep.tune instrument, song

bleep.play

sleep 1 while !bleep.stopped?
