require 'sinatra/base'
require './lib/store'

module Pane
  class Application < Sinatra::Application
    get '/' do
      store = Store.new
      status store.get
    end
  end
end
