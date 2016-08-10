defmodule Chapter06.Map.Test do
  use ExUnit.Case

  describe "build_map/0" do
    @tag skip: true
    test "exists" do
      Chapter06.Map.build_map
    end

    @tag skip: true
    test "returns a map" do
      %{} = Chapter06.Map.build_map
    end

    @tag skip: true
    test "returned map contains :hello key" do
      %{hello: _} = Chapter06.Map.build_map
    end

    @tag skip: true
    test "returned map contains {:hey, :guys} key" do
      %{{:hey, :guys} => _} = Chapter06.Map.build_map
    end
  end

  describe "get_password/1" do
    @tag skip: true
    test "exists" do
      Chapter06.Map.get_password(%{})
    end

    @tag skip: true
    test "only accepts a map" do
      assert_raise FunctionClauseError,
        "no function clause matching in Chapter06.Map.get_password/1",
        fn ->
          Chapter06.Map.get_password([1,2,3])
        end
    end

    @tag skip: true
    test "returns a user's password if present" do
      params = %{"user" => %{"username" => "studly1982", "password" => "123456"}}
      assert Chapter06.Map.get_password(params) == "123456"
    end

    @tag skip: true
    test "returns nil if password is not present" do
      params = %{}
      assert Chapter06.Map.get_password(params) == nil
    end
  end

  describe "update_username/2" do
    @tag skip: true
    test "exists" do
      user = %{username: "bob", password: "123456"}
      Chapter06.Map.update_username(user, "Robert")
    end

    @tag skip: true
    test "accepts only a map for the first parameter" do
      user = [1,2,3]
      assert_raise FunctionClauseError,
        "no function clause matching in Chapter06.Map.update_username/2",
        fn ->
          Chapter06.Map.update_username(user, "Robert")
        end
    end

    @tag skip: true
    test "accepts only a string for the first parameter" do
      user = %{username: "bob", password: "123456"}
      assert_raise FunctionClauseError,
        "no function clause matching in Chapter06.Map.update_username/2",
        fn ->
          Chapter06.Map.update_username(user, :robert)
        end
    end

    @tag skip: true
    test "does not change the user's password" do
      user = %{username: "bob", password: "123456"}
      assert %{password: "123456"} = Chapter06.Map.update_username(user, "Robert")
    end

    @tag skip: true
    test "Changes the user's username" do
      user = %{username: "bob", password: "123456"}
      assert %{username: "Robert"} = Chapter06.Map.update_username(user, "Robert")
    end

    @tag skip: true
    test "makes no other changes to the user" do
      user = %{username: "bob", password: "123456"}
      assert %{password: "123456", username: "Robert"} == Chapter06.Map.update_username(user, "Robert")
    end

    @tag skip: true
    test "does not affect the initial user" do
      user = %{username: "bob", password: "123456"}
      assert %{password: "123456", username: "Robert"} == Chapter06.Map.update_username(user, "Robert")
      assert user == %{username: "bob", password: "123456"}
    end
  end
end
