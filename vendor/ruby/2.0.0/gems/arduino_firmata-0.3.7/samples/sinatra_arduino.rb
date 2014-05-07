#!/usr/bin/env ruby
$:.unshift File.expand_path '../lib', File.dirname(__FILE__)
require 'rubygems'
require 'sinatra'
require 'eventmachine'
require 'arduino_firmata'

# arduino = ArduinoFirmata.connect
arduino = ArduinoFirmata.connect nil, :nonblock_io => true, :eventmachine => true

get '/' do
  redirect './on'
end

get '/on' do
  analog = arduino.analog_read(0)
  arduino.digital_write 13, ArduinoFirmata::HIGH
  "<p>analog : #{analog}</p><p><a href='./off'>LED OFF</a></p>"
end

get '/off' do
  analog = arduino.analog_read(0)
  arduino.digital_write 13, ArduinoFirmata::LOW
  "<p>analog : #{analog}</p><p><a href='./on'>LED ON</a></p>"
end
