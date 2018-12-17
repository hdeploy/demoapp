#!/usr/bin/env ruby

require 'sinatra'

class Demoapp < Sinatra::Base
  get '/' do
    v = 'unknown'
    f = File.expand_path('../REVISION',__FILE__)
    v = File.read(f) if File.exists? f
    "Hello I am the demo app running on #{`hostname`.chomp} revision #{v} in mybranch\n"
  end
end

run Demoapp

