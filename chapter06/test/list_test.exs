defmodule Chapter06.List.Test do
  use ExUnit.Case
  import ExUnit.CaptureIO

  describe "print_nums/1 without Enum" do
    @tag skip: true
    test "exists" do
      capture_io(fn ->
        Chapter06.List.print_nums([1,2,3,4])
      end)
    end

    @tag skip: true
    test "prints each number in the list" do
      assert capture_io(fn ->
        Chapter06.List.print_nums([1,2,3,4])
      end) == "1\n2\n3\n4\n"
    end

    @tag skip: true
    test "can handle receiving an empty list" do
      Chapter06.List.print_nums([])
    end
  end

  describe "print_nums/1 with Enum" do
    @tag skip: true
    test "exists" do
      capture_io(fn ->
        Chapter06.List.print_nums([1,2,3,4])
      end)
    end

    @tag skip: true
    test "prints each number in the list" do
      assert capture_io(fn ->
        Chapter06.List.print_nums([1,2,3,4])
      end) == "1\n2\n3\n4\n"
    end

    @tag skip: true
    test "can handle receiving an empty list" do
      Chapter06.List.print_nums([])
    end
  end

  describe "double_nums/1" do
    @tag skip: true
    test "exists" do
      Chapter06.List.double_nums([1,2,3,4,5])
    end

    @tag skip: true
    test "returns every number doubled" do
      assert Chapter06.List.double_nums([1,2,3,4,5]) == [2,4,6,8,10]
    end

    @tag skip: true
    test "can handle receiving an empty list" do
      assert Chapter06.List.double_nums([]) == []
    end
  end
end
