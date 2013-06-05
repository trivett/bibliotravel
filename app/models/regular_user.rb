class RegularUser < User

  has_secure_password

  validates :first_name, :last_name, :email, presence: true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
  validates :email, uniqueness: { case_sensitive: false }
end