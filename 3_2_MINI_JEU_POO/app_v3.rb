require 'bundler'
Bundler.require
require 'pry'

require_relative 'lib/game'
require_relative 'lib/player'

my_game = Game.new("Wolverine")

binding.pry
