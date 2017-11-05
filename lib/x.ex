defmodule X do
  def line(dim, pos) do
    (Enum.map(0..dim, fn(n) -> if (n == pos or n == dim-pos), do: "X", else: " " end) |> Enum.join) <> "\n"
  end

  def draw(acc, size, i) when i == size do
    acc ++ [line(size, size)] |> Enum.join
  end

  def draw(acc, size, i) when i <= size do
    draw(acc ++ [line(size, i)], size, i+1)
  end

  def draw(size) do
    draw([], size-1, 0)
  end
end
