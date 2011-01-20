class ClientsController < ApplicationController
  
  respond_to :html
  def index
    @clients = Client.tasks
  end
  
end
          
