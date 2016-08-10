defmodule Chapter06.AnonFunc.Test do
  use ExUnit.Case

  alias Chapter06.AnonFunc

  describe "build_anonymous_function" do
    test "exists" do
      AnonFunc.build_anonymous_function
    end

    @tag skip: true
    test "returns a function" do
      assert AnonFunc.build_anonymous_function |> is_function,
        "The returned value is not a function"
    end

    @tag skip: true
    test "the returned function has an arity of 2" do
      func = AnonFunc.build_anonymous_function
      func.(true, true)
    end

    @tag skip: true
    test "first arg must be a boolean" do
      func = AnonFunc.build_anonymous_function
      assert_raise FunctionClauseError, "no function clause matching in anonymous fn/2 in AnonFunc.build_anonymous_function/0", fn ->
        func.(1, true)
      end
    end

    @tag skip: true
    test "second arg must be a boolean" do
      func = AnonFunc.build_anonymous_function
      assert_raise FunctionClauseError, "no function clause matching in anonymous fn/2 in AnonFunc.build_anonymous_function/0", fn ->
        func.(true, 1)
      end
    end

    @tag skip: true
    test "returns false if both params are false" do
      func = AnonFunc.build_anonymous_function
      refute func.(false, false)
      assert func.(false, false) != nil
    end

    @tag skip: true
    test "returns false if the first param is false" do
      func = AnonFunc.build_anonymous_function
      refute func.(false, true)
      assert func.(false, true) != nil
    end

    @tag skip: true
    test "returns false if the second param is false" do
      func = AnonFunc.build_anonymous_function
      refute func.(true, false)
      assert func.(true, false) != nil
    end

    @tag skip: true
    test "returns true if both params are true" do
      func = AnonFunc.build_anonymous_function
      assert func.(true, true)
    end
  end
end
