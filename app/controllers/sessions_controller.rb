class SessionsController < ApplicationController
  def create
    @user = User.find_or_create(provider: 'test', uid: '1', first_name: 'Marcin', last_name: 'Adamczyk', nickname: 'tehPlayer', email: 'adamczyk.marcin@outlook.com')
    session[:id] = @user.id
    #@user = User.find_or_create_from_auth_hash(auth_hash)
    #self.current_user = @user
    redirect_to root_url
  end

  def destroy
    session[:id] = nil
    redirect_to root_url
  end

  protected

    def auth_hash
      request.env['omniauth.auth']
    end
end
