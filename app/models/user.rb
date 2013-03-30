class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :nickname, :provider, :uid

  def self.find_or_create(hsh)
    user = where(email: hsh[:email])
    user.empty? ? create(hsh) : user.first
  end

  def name
    first_name+" '"+nickname+"' "+last_name
  end
end
