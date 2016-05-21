require 'test_helper'

class FriendTest < ActiveSupport::TestCase
  test "requires first name" do
    friend = Friend.new(last_name: "Alcano", email: "christ@alcano.com")
    assert_not friend.save, "Saved friend without first_name"
    assert_not_empty friend.errors[:first_name]
  end

  test "requires last name" do
    friend = Friend.new(first_name: "Christa", email: "christ@alcano.com")
    assert_not friend.save, "Saved friend without last_name"
    assert_not_empty friend.errors[:last_name]
  end

  test "requires email" do
    friend = Friend.new(first_name: "Christa", last_name: "Alcano")
    assert_not friend.save, "Saved friend without email"
    assert_not_empty friend.errors[:email]
  end

end
