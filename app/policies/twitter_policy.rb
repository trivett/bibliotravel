class TwitterPolicy

  def initialize auth
    @auth = auth
  end

  def first_name
    split_name.first
  end

  def last_name
    split_name.last
  end

  def email
    nil
  end

  def username
    @auth.info.nickname
  end

  def image_url
    "https://apitwitter.com/1/users/profile_image?screen_name=#{@auth.info.nickname}&size=original"
  end

  def uid
    @auth.uid
  end

  def oauth_token
    @auth.credentials.token
  end

  def oauth_expires
    nil
  end

  def oauth_secret
    @auth.credentials.secret
  end

  def create_callback account
    # any post Twit oauth account creation methods here
  end

  def refresh_callback account
    # any post methods to be triggered on subsequent Twit oauth logins
  end

  private

  def split_name
    name = @auth.info.name
    if name.include?(" ")
      first_name, last_name = name.split(" ")
    else
      first_name = name
      last_name = nil
    end
    [first_name, last_name]
  end

end