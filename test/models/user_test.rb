require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'name' do
    user = User.new(name: 'liuxiong', email: 'wo@example.com',
      email_confirmation: 'wo@example.com', terms_of_service: "1", user_type: 'type1')
    post = user.microposts.new(user_id: user, content: 'hello')
    user.save
    assert user.valid?
    # Rails.logger.debug "Processing the request"
  end
end
