class Micropost < ActiveRecord::Base
  validates :content, presence: true
end
