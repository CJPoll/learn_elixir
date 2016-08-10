defmodule Chapter06.Struct.Test do
  use ExUnit.Case

  alias Chapter06.User

  describe "%Chapter06.User{}" do
    #@tag skip: true
    #test "has a :user_name key" do
    #  struct = %User{}
    #  struct.user_name
    #end

    #@tag skip: true
    #test ":user_name defaults to 'Jim'" do
    #  struct = %User{}
    #  assert struct.user_name == "Jim"
    #end

    #@tag skip: true
    #test "has a :password key" do
    #  struct = %User{}
    #  struct.password
    #end

    #@tag skip: true
    #test ":password defaults to '123456'" do
    #  struct = %User{}
    #  assert struct.password == "123456"
    #end
  end

  describe "update_password" do
    #@tag skip: true
    #test "exists" do
    #  user = %User{}
    #  Chapter06.User.update_password(user, "987654")
    #end

    #@tag skip: true
    #test "requires a %User{} for the first arg" do
    #  user = %{user_name: "Jim", password: "123456"}
    #  assert_raise FunctionClauseError, fn ->
    #    Chapter06.User.update_password(user, "987654")
    #  end
    #end

    #@tag skip: true
    #test "updates a user's password" do
    #  user = %User{}
    #  user = Chapter06.User.update_password(user, "987654")
    #  assert user.password == "987654"
    #end

    #@tag skip: true
    #test "creates a new %User{} on update" do
    #  user = %User{}
    #  updated_user = Chapter06.User.update_password(user, "987654")
    #  assert updated_user.password == "987654"
    #  assert user.password == "123456"
    #end
  end
end
