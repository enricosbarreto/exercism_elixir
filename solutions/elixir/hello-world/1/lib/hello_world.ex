defmodule HelloWorld do
  @doc """
  Simply returns "Hello, World!"
  """

  
  @spec hello :: String.t()
  def hello do
    "Hello, World!"
    
  end
  "hello"
  """
  |> String.upcase()
  |> IO.inspect()
  |> String.split("", trim: true)
  """
end

