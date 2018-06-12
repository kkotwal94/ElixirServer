defmodule Entry do
  def main do
    do_maps()
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

    IO.puts "Tuple #{is_tuple(my_stats)}"

    my_stats2 = Tuple.append(my_stats, 42)

    IO.puts "Age #{elem(my_stats2, 3)}"

    IO.puts "Size #{tuple_size(my_stats2)}"

    my_stats3 = Tuple.delete_at(my_stats2, 0)

    my_stats4 = Tuple.insert_at(my_stats3, 0, 1947)

    many_zeroes = Tuple.duplicate(0, 5)
    {weight, height, name} = { 175, 6.25, "Karan"}

    IO.puts "Weight: #{weight}"
  end

  def do_lists do
    list1 = [1,2,3]
    list2 = [4,5,6]

    list3 = list1 ++ list2

    list4 = list3 -- list1

    IO.puts 6 in list4

    [head | tail] = list3
    IO.puts "Head : #{head}"
    IO.write "Tail : "
    IO.inspect tail

    Enum.each tail, fn item ->
      IO.puts item
    end

    words = ["Random", "Words", "In a", "list"]
    Enum.each words, fn word ->
      IO.puts word
    end

    display_list(words)
  end

  def display_list([word|words]) do
    IO.puts word
    display_list(words)
  end

  def display_list([]), do: nil

  def do_maps do
    capitals = %{"Alabama" => "Montgomery", "Alaska" => "Juno", "Arizona" => "Phoenix"}

     IO.puts "Capital of Alaska is #{capitals["Alaska"]}"

     capitals2 = %{alabama: "Montgomery", alaska: "Juno", arizona: "Phoenix"}

     IO.puts "Capital of Arizona is #{capitals2.arizona}"

     capitals3 = Dict.put_new(capitals, "Arkansas", "Little Rock")
  end

end
