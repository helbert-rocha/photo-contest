require 'test_helper'
include Warden::Test::Helpers

class UsersNameTest < ActionDispatch::IntegrationTest

  def setup
    @user = FactoryGirl.build(:user)
    @user.name = "Helbert"
    @user.username = "helbert"
    @user.password = "12345678"
    @user.password_confirmation = "12345678"
    @user.save!
  end

  test "user name on dropdown" do
    get '/users/sign_in'
    assert_response :success
    post '/users/sign_in', {user: { login: @user.username,
                                    password: "12345678"} }

    follow_redirect!
    assert_template root_path
    assert_select "ul>li>a.dropdown-toggle.user-name", @user.name
  end

end
