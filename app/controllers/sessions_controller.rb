class SessionsController < ApplicationController

  def create
    sessions[:name] = params[:name]
    redirect_to samples_url
  end

  def destroy

  end

end
