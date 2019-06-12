class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = find_client
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.create(client_params)
  end

  def edit
    @client = find_client
  end

  def update
    @client = find_client
    @client.update(client_params)
    redirect_to @client
  end

  def destroy
    @client = find_client
    redirect_to clients_path

  end

  private

  def find_client
    Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:username)
  end
end
