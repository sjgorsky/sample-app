class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #Log user in and redirect to user's show page
    render 'new'
    #Create an error message
    end
  end

  def destroy
  end
end
