defmodule FizzBuzz do

  def build(file_name) do
    case File.read(file_name) do
      {:ok, content} -> content
      {:error, reason} -> reason
    end
  end

end
