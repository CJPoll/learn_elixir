defmodule Chapter06.Stack.Test do
  use ExUnit.Case

  alias Chapter06.Stack

  describe "create" do
    @tag skip: true
    test "exists" do
      Stack.create
    end

    @tag skip: true
    test "creates a new stack" do
      assert Stack.create == []
    end
  end

  describe "push" do
    @tag skip: true
    test "exists" do
      stack = Stack.create
      Stack.push(stack, 3)
    end

    @tag skip: true
    test "pushes the element onto the stack" do
      stack =
        Stack.create
        |> Stack.push(3)
        |> Stack.push(2)
        |> Stack.push(1)

      assert stack == [1, 2, 3]
    end
  end

  describe "pop" do
    @tag skip: true
    test "exists" do
      Stack.create
      |> Stack.push(3)
      |> Stack.pop
    end

    @tag skip: true
    test "returns the most recently pushed element" do
      assert {5, _} =
        Stack.create
        |> Stack.push(3)
        |> Stack.push(4)
        |> Stack.push(5)
        |> Stack.pop
    end

    @tag skip: true
    test "returns the new queue" do
      assert {_, [4, 3]} =
        Stack.create
        |> Stack.push(3)
        |> Stack.push(4)
        |> Stack.push(5)
        |> Stack.pop
    end

    @tag skip: true
    test "returns nil if the stack is empty" do
      assert {nil, _} =
        Stack.create
        |> Stack.pop
    end

    @tag skip: true
    test "returns the unmodified stack if the stack is empty" do
      assert {_, []} =
        Stack.create
        |> Stack.pop
    end
  end
end
