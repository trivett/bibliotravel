class OAuthUser

  attr_reader :provider, :user

  def initialize creds, user=nil
    @auth = creds
    @user = user
    @provider = @auth.provider
  end

  def login_or_create
    logged_in? ? create_new_account : (login || create_new_account)
  end

  def logged_in?
    @user.present?
  end
end