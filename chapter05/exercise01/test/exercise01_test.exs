defmodule Exercise01Test do
  use ExUnit.Case

  setup do
    test_func = Exercise01.put_your_anon_func_in_here

    {:ok, %{test_func: test_func}}
  end

  describe "put_your_anon_func_in_here" do
    test "returns an anonymous function",
    %{test_func: test_func} do
      assert is_function(test_func)
    end

    test "anon_func accepts a single argument",
    %{test_func: test_func} do
      assert is_function(test_func, 1)
    end

    test "anon_func accepts {:ok, <integer>}",
    %{test_func: test_func} do
      test_func.({:ok, :rand.uniform(10)})
    end

    test "anon_func returns an integer if {:ok, <integer>} is passed in",
    %{test_func: test_func} do
      assert {:ok, :rand.uniform(10)}
             |> test_func.()
             |> is_integer
    end

    test "anon_func accepts {:error, <atom>}",
    %{test_func: test_func} do
      test_func.({:error, :reason})
    end

    test "anon_func returns an atom if {:error, <atom>} is passed in",
    %{test_func: test_func} do
      assert {:error, :reason}
             |> test_func.()
             |> is_atom
    end

    test "does not accept other patterns of arguments",
    %{test_func: test_func} do
      assert_raise FunctionClauseError, fn -> test_func.({}) end
      assert_raise FunctionClauseError, fn -> test_func.({:hello, 5}) end
      assert_raise FunctionClauseError, fn -> test_func.({:hello, :world}) end
      assert_raise FunctionClauseError, fn -> test_func.({:ok, 5.0}) end
      assert_raise FunctionClauseError, fn -> test_func.({:ok, "hello"}) end
      assert_raise FunctionClauseError, fn -> test_func.({:error, "hello"}) end
      assert_raise FunctionClauseError, fn -> test_func.({:error, 5.0}) end
      assert_raise FunctionClauseError, fn -> test_func.([:error, :reason]) end
    end
  end
end
