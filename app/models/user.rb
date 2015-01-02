class User < ActiveRecord::Base
  has_many :microposts

  validates_associated :microposts
  validates :terms_of_service, acceptance: true

  validates :email, confirmation: true
  validates :email_confirmation, presence: true

  validates :user_type, exclusion: { in: %w(www us ca jp),
    message: "%{value} is reserved"}
  validates :user_type, format: { with: /\A[a-zA-Z]+\d\z/ }
  validates :user_type, inclusion: { in: %w(type1 type2) }
  validates :user_type, length: { minimum: 2, maximum: 10}

end
