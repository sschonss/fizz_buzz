defmodule FizzBuzz do

  def build(file_name) do
    file = File.read(file_name)
    handle_file_read(file)
  end

  def handle_file_read({:ok, content}), do: content
  def handle_file_read({:error, reason}), do: reason

end
