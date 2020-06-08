require 'bundler'
Bundler.require

require './lib/router'

Router.new.perform
