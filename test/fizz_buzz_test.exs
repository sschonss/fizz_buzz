defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do

    test "returns {:ok, result} when file is read successfully" do
      assert {:ok, [1, 2, "Fizz", 4, "Buzz", "Buzz", "FizzBuzz", "Buzz"]} = FizzBuzz.build("test/fixtures/valid_file.txt")
    end

    test "returns {:error, reason} when file is not read successfully" do
      assert {:error, "Error: enoent"} = FizzBuzz.build("test/fixtures/invalid_file.txt")
    end

  end
end
