require "test_helper"
include RSpec::Matchers

class UserTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    expect(User.new(username: "Tony", email: "Tony@gmail.com", password: "123456", password_confirmation: "123456")).to be_valid
  end

  test "is not valid without a username" do
    user = User.new(username: nil, email: "Tony@gmail.com", password: "123456", password_confirmation: "123456")
    expect(user).to_not be_valid
  end

  test "is not valid with a duplicate username" do
    user1 = User.new(username: "Tony", email: "Tony@gmail.com", password: "123456", password_confirmation: "123456")
    user1.save
    user2 = User.new(username: "Tony", email: "Anthony@gmail.com", password: "123456", password_confirmation: "123456")
    expect(user1).to be_valid
    expect(user2).to_not be_valid 
  end
  
  test "is not valid without an email" do
    user = User.new(username: "Tony", email: nil, password: "123456", password_confirmation: "123456")
    expect(user).to_not be_valid
  end

  test "is not valid with a badly formated email" do
    user = User.new(username: "Tony", email: "ThisIsNotAValidEmail", password: "123456", password_confirmation: "123456")
    expect(user).to_not be_valid
  end

  test "is not valid with a duplicate email" do
    user1 = User.new(username: "Tony", email: "Tony@gmail.com", password: "123456", password_confirmation: "123456")
    user1.save
    user2 = User.new(username: "Anthony", email: "Tony@gmail.com", password: "123456", password_confirmation: "123456")
    expect(user1).to be_valid
    expect(user2).to_not be_valid 
  end

  test "is not valid without a password" do
    user = User.new(username: "Tony", email: "Tony@gmail.com", password: nil, password_confirmation: "123456")
    expect(user).to_not be_valid
  end

  test "is not valid with a password that contains less than 6 characters" do
    user = User.new(username: "Tony", email: "Tony@gmail.com", password: "1234", password_confirmation: "123456")
    expect(user).to_not be_valid
  end

  test "is not valid without a password confirmation" do
    user = User.new(username: "Tony", email: "Tony@gmail.com", password: "123456", password_confirmation: nil)
    expect(user).to_not be_valid
  end

  test "is not valid with a password confirmation that contains less than 6 characters" do
    user = User.new(username: "Tony", email: "Tony@gmail.com", password: "123456", password_confirmation: "1234")
    expect(user).to_not be_valid
  end

  test "is not valid with a password confirmation that does not match the password" do
    user = User.new(username: "Tony", email: "Tony@gmail.com", password: "123456", password_confirmation: "1234567")
    expect(user).to_not be_valid
  end

end
