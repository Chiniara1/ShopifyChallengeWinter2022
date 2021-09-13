require "test_helper"

class ImageTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    user = User.new(username: "Tony", email: "Tony@gmail.com", password: "123456", password_confirmation: "123456")
    expect(Image.new(user: user, name: "picture", description: "This is a description")).to be_valid
  end

  test "is not valid without a user" do
    image = Image.new(user: nil, name: "picture", description: "This is a description")
    expect(image).to_not be_valid
  end

  test "is not valid without a name" do
    user = User.new(username: "Tony", email: "Tony@gmail.com", password: "123456", password_confirmation: "123456")
    image = Image.new(user: user, name: nil, description: "This is a description")
    expect(image).to_not be_valid
  end

  test "is not valid without a description" do
    user = User.new(username: "Tony", email: "Tony@gmail.com", password: "123456", password_confirmation: "123456")
    image = Image.new(user: user, name: "picture", description: nil)
    expect(image).to_not be_valid
  end
end
