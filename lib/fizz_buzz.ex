defmodule FizzBuzz do

  def build(file_name) do
    file_name
    |> File.read
    |> handle_file_read
  end

  defp handle_file_read({:ok, content}) do 
    result =
      content
      |>String.split(",")
      |> Enum.map(&convert_and_evaluate_numbers/1)

    {:ok, result}
  end

  defp handle_file_read({:error, reason}), do: {:error,"Error: #{reason}"}


  defp convert_and_evaluate_numbers(elem) do
    elem
    |> String.to_integer
    |> evaluate_number
  end

  defp evaluate_number(number) do
    cond do
      rem(number, 15) == 0 -> "FizzBuzz"
      rem(number, 3) == 0 -> "Fizz"
      rem(number, 5) == 0 -> "Buzz"
      true -> number
    end
  end


end
