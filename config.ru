require 'rubygems'
require 'sinatra'
require 'haddock'
require 'json'

class Fishsticks < Sinatra::Base

  configure do
    set :default_delimiters,  '~!@#$%^&*-_=+\\|;:,<.>/?'
    set :default_length,      12
    set :default_wordlist,    'words'
  end

  get '/' do
    Haddock::Password.diction = File.join(File.dirname(__FILE__), 'wordlists', params[:dictionary] || settings.default_wordlist)
    Haddock::Password.delimiters = (params[:delimiters] || settings.default_delimiters)
    Haddock::Password.generate(params[:length] || settings.default_length).to_json
  end
end

run Fishsticks