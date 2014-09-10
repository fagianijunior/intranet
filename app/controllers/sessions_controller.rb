class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[ :session ][ :email ].downcase)
    if user && user.authenticate(params[ :session ][ :password ])
      session[ :user_id ] = user.id
      redirect_to root_path
    else
      flash.now[ :warning ] = "Email ou senha inválidos"
      render "new"
    end
  end

  def destroy
    session[ :user_id ] = nil
    flash[ :info ] = "Usuário desconectado!"
    redirect_to root_url
  end
end
