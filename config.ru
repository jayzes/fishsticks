require 'rubygems'
require 'sinatra'
require 'haddock'
require 'json'

class Fishsticks < Sinatra::Base

  configure do
    set :default_delimiters,  '~!@#$%^&*-_=+\\|;:,<.>/?'
    set :default_length,      12
  end

  get '/' do
    Haddock::Password.delimiters = (params[:delimiters] || settings.default_delimiters)
    Haddock::Password.generate(params[:length] || settings.default_length).to_json
  end
end

run Fishsticks