#!/usr/bin/env elixir

ExUnit.start

defmodule About_Matches_Variables do
  use ExUnit.Case
  use Koans

  think "It's like affecting a variable" do
    a_variable = 1
    assert a_variable == __?
  end

  think "The real operation is named matching" do
    [a, b] = [1, 2]

    assert a  == __? and b == __?
  end

  think "Matching three variables" do
    [a, b, c] = [1, 2, 3]

    assert a  == __? and b == __? and c == __?
  end

  think "Matching one variable and drop a value" do
    [a, _] = ["Keep me", "Drop me"]

    assert a  == __?
  end

  think "Error matching" do
    assert_raise __?, fn -> [ a , a ] = [ 1 , 2 ] end
  end

  think "Matching an array inner an array" do
    [ a ] = [ ["Hello", "World !"] ]

    assert a  == __?
  end

  think "matching a tuple" do
    { :ok, result } = { :ok, 12 }
    assert result == __?
  end

  think "heads and tails" do
    [ head | tail ] = [1, 2, 3]
    assert head == __?
    assert tail == __?
  end
end
