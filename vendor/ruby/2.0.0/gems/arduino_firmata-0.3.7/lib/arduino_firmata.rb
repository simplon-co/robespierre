$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'serialport'
require 'event_emitter'
require 'stringio'
require 'arduino_firmata/error'
require 'arduino_firmata/main'
require 'arduino_firmata/const'
require 'arduino_firmata/arduino'
require 'arduino_firmata/version'

module ArduinoFirmata
end
