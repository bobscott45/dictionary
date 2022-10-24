defmodule Dictionary do
  @word_list     "assets/words.txt"
                 |> File.read!
                 |> String.split( ~r/\n/, trim: true)

  @spec random_word() :: String.t
  def random_word do
    @word_list
    |> Enum.random
  end

end
