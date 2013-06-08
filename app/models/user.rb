class User < ActiveRecord::Base
  include InferredSlug::Slug

  has_many :accounts, :dependent => :destroy
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :picture_url

  def slug
    "#{id}-#{first_name}-#{last_name}"
  end

  def facebook
    o_token = self.accounts.where(provider: 'facebook').first.oauth_token
    @facebook ||= Koala::Facebook::API.new(o_token)
  end

  def has_facebook?
    accounts.where(provider: 'facebook').any?
  end

  def has_twitter?
    accounts.where(provider: 'twitter').any?
  end

end
