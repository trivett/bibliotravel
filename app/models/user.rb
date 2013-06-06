class User < ActiveRecord::Base
  has_many :accounts, :dependent => :destroy
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :picture_url

  def has_facebook?
    accounts.where(provider: 'facebook').any?
  end

  def has_twitter?
    accounts.where(provider: 'twitter').any?
  end

end
