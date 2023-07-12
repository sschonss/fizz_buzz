defmodule FizzBuzz do

  def build(file_name) do
    file_name
    |> File.read
    |> handle_file_read
  end

  def handle_file_read({:ok, content}), do: content
  def handle_file_read({:error, reason}), do: reason

end
