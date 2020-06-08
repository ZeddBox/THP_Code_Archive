require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

  get '/gossips/new' do
    erb :new_gossips
  end

  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/'
  end

  get '/gossips/:id' do
    puts "Potin numéro #{params['id']} choisi : "
    erb :show, locals: {gossip: Gossip.find(params['id'].to_i)}
  end

  get '/gossips/:modif/edit' do
    puts "Potin numéro #{params['modif']} en cours  de modification"
    erb :edit, locals: {gossip_to_modify: Gossip. find(params['modif'].to_i)}
  end

  post '/gossips/edit' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).edit(params["gossip_number"].to_i)

    redirect '/'
  end

  # # Ask user which one to delete
  # gossip_number_to_delete = gets.chomp

  # # Put all gossips objects indexed in a hash
  # all_gossips = []

  # gossips.each do |gossip|
  #   all_gossips << gossip
  # end

  # # Determine which gossip is going to be deleted
  # gossip_to_delete = all_gossips[gossip_number_to_delete.to_i - 1]



end