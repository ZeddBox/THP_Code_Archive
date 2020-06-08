require 'bundler'
require 'colorize'
require 'pry'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'app/human.rb'
require 'app/game.rb'
require 'views/application.rb'

#  binding.pry

Application.new.perform