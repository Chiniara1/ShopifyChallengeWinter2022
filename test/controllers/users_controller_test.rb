require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest

  test "should go to the users path after creating a user" do
    user = User.create(username: "Tony", email: 'Tony@gmail.com', password: "123456", password_confirmation: "123456")
    get users_path
    expect(response).to be_successful
  end

  test "should show every user" do
    User.create(username: 'Tony', email: 'Tony@gmail.com', password: "123456", password_confirmation: "123456")
    User.create(username: 'Anthony', email: 'Anthony@gmail.com', password: "123456", password_confirmation: "123456")
    get users_path
    assert_response :success
    assert_select "th", "User ID"
    assert_select "th", "Username"
    assert_select "td", "Tony"
    assert_select "td", "Anthony"
  end

end
