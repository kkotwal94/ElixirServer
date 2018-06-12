defmodule Entry do
  def main do
    do_tuples()
  end

  def figure_out_stuff do
    my_int = 3
    IO.puts "Int #{is_integer(my_int)}"
    my_float = 3.1458 ## accurate to 16 digits
    IO.puts "Float #{is_float(my_float)}"

    IO.puts "Atom #{is_atom(:Karan)}"
    one_to_ten = 1..10
    my_str = "My sentecne"

    IO.puts "Length : #{String.length(my_str)}"
  end

  def do_math do
    age = 16
    case age do
      1 -> IO.puts "Entered 1"
      2 -> IO.puts "Entered 2"
      _ -> IO.puts "Default"

      IO.puts "Ternary : #{if age > 18, do: "Can Vote", else: "Can't vote"}"
    end
  end

  def do_tuples do
    my_stats = {175, 6.25, :Karan}

    IO.puts "Tuyple #{s_tuple(my_stats)}"

    my_stats2 = Tuple.append(my_stats, 42)

    IO.puts "Age #{elem(my_stats2, 3)}"

    IO.puts "Size #{tuple_size(my_stats2)}"

    my_stats3 = Tuple.delete_at(my_stats2, 0)

    my_stats4 = Tuple.insert_at(my_stats3, 0, 1947)

    many_zeroes = Tuple.duplicate(0, 5)
    {weight, height, name} = { 175, 6.25, "Karan"}

    IO.puts "Weight: #{weight}"
  end
end
