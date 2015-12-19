#!/usr/bin/env elixir

ExUnit.start

defmodule About_Enums do
  use ExUnit.Case
  use Koans

  think "Output each element on its own line" do
    list = [1, 2, 3]
    Enum.each(list, fn (x) -> __? end)
  end

  think "Mapping over a list" do
    list = [1, 2, 3]
    assert Enum.map(list, fn (x) -> __? end) == [2, 3, 4]
  end

  think "concatenation" do
    list_1 = [1, 2, 3]
    list_2 = [4, 5, 6]
    assert Enum.concat(list_1, list_2) == __?
  end

  think "Empty, or not?" do
    list = [1, 2, 3]
    assert Enum.empty?(list) == __?
  end

  think "Not empty?" do
    list = []
    assert Enum.empty?(list) == __?
  end

  think "Check if all items match" do
    list = [1, 2, 3]
    assert Enum.all?(list, fn (x) -> x < 4 end) == __?
  end

  think "Check if any items match" do
    list = [1, 2, 3]
    assert Enum.any?(list, fn (x) -> x < 2 end) == __?
  end

  think "Is it there, or not?" do
    list = [:a, :b, :c]
    assert Enum.member?(list, :d) == __?
  end

  think "What element is first?" do
    list = [:a, :b, :c, :d]
    assert Enum.at(list, 0) == __?
  end

  think "What happens if we look outside the list?" do
    list = [:a, :b, :c, :d]
    assert Enum.at(list, 5) == __?
  end

  think "at can take a default" do
    list = [:a, :b, :c]
    assert Enum.at(list, 5, :something) == __?
  end

  think "fetch is like at" do
    list = [:a, :b, :c]
    assert Enum.fetch(list, 0) == __?
  end

  think "fetch tells you if it can't find an element" do
    list = [:a, :b, :c]
    assert Enum.fetch(list, 4) == __?
  end

  think "fetch! will raise an exception if it can't find an element" do
    list = [:a, :b, :c]
    assert_raise __?, fn -> Enum.fetch!(list, 4) end
  end

  think "find the first element which matches" do
    list = [1, 2, 3, 4]
    assert Enum.find(list, fn (x) -> x > 2 end) == __?
  end

  think "what happens when find can't find?" do
    list = [1, 2, 3, 4, 5]
    assert Enum.find(list, fn (x) -> x > 5 end) == __?
  end

  think "find takes a default" do
    list = [1, 2, 3]
    assert Enum.find(list, 4, fn (x) -> x > 3 end) == __?
  end

  think "what index is this number at?" do
    list = [1, 2, 3]
    assert Enum.find_index(list, fn(x) -> x == 2 end) == __?
  end

  think "finding and manipulating a value" do
    list = [1, 2, 3]
    assert Enum.find_value(list, fn (x) -> rem(x, 2) == 1 end) == __?
  end

  think "each element with its index" do
    list = [:a, :b, :c]
    assert Enum.with_index(list) == __?
  end

  think "enums can be chunked" do
    list = [1, 2, 3, 4, 5, 6]
    assert Enum.chunk(list, 2) == __?
  end

  think "chunking can happen in steps" do
    list = [1, 2, 3, 4, 5, 6]
    assert Enum.chunk(list, 2, 1) == __?
  end

  think "chunking can have padding" do
    list = [1, 2, 3, 4, 5, 6]
    assert Enum.chunk(list, 3, 2, [7]) == __?
  end

  think "chunking by unique values" do
    list = [3, 4, 5, 6, 7, 8]
    assert Enum.chunk_by(list, fn (x) -> x > 5 end) == __?
  end

  think "dropping items" do
    list = [1, 2, 3, 4]
    assert Enum.drop(list, 2) == __?
  end

  think "dropping a lot of items" do
    list = [1, 2, 3, 4]
    assert Enum.drop(list, 10) == __?
  end

  think "dropping with negative numbers" do
    list = [1, 2, 3, 4]
    assert Enum.drop(list, -1) == __?
  end

  think "dropping while a condition is met" do
    list = [1, 2, 3, 4]
    assert Enum.drop_while(list, fn (x) -> x < 2 end) == __?
  end

  think "filtering" do
    list = [1, 2, 3, 4]
    assert Enum.filter(list, fn (x) -> rem(x, 2) == 1 end) == __?
  end

  think "filtering + mapping" do
    list = [1, 2, 3, 4]
    assert Enum.filter_map(list, fn (x) -> rem(x, 2) == 1 end, &(&1 * 2)) == __?
  end

  think "flat mapping" do
    list = Enum.flat_map([{1, 3}, {4, 6}], fn({x, y}) -> x..y end)
    assert list == __?
  end

  think "joining" do
    list = [1, 2, 3]
    assert Enum.join(list) == __?
  end

  think "joining with a separator" do
    list = [1, 2, 3]
    assert Enum.join(list, ",") == __?
  end

  think "mapping and joining" do
    list = [1, 2, 3]
    assert Enum.map_join(list, fn (x) -> x * 2 end) == __?
  end

  think "map reduce" do
    list = [4, 5, 6]
    assert Enum.map_reduce(list, 0, fn (x, acc) -> {x * 2, x + acc} end) == __?
  end

  think "zipping" do
    list_1 = [1, 2, 3]
    list_2 = [4, 5, 6]
    assert Enum.zip(list_1, list_2) == __?
  end

  think "what's the maximum value in this list?" do
    list = [6, 1, 5, 2, 4, 3]
    assert Enum.max(list) == __?
  end

  think "getting the maximum by function" do
    list = ["the", "longest", "word", "is", "expected"]
    assert Enum.max_by(list, &String.length(&1)) == __?
  end

  think "what's the minimum value in this list?" do
    list = [6, 1, 5, 2, 4, 3]
    assert Enum.min(list) == __?
  end

  think "getting the minimum by function" do
    list = ["the", "shortest", "word", "is", "expected"]
    assert Enum.min_by(list, &String.length(&1)) == __?
  end

  think "partitioning" do
    numbers = 1..10
    { left, right } = Enum.partition(numbers, fn(x) -> rem(x, 2) == 1 end)
    assert left == __?
    assert right == __?
  end

  think "reduction" do
    numbers == 1..10
    result = Enum.reduce(numbers, 0, fn (x, acc) -> acc + x end)
    assert result == __?
  end

  think "rejection" do
    numbers = 1..10
    result = Enum.reject(numbers, fn(x) -> rem(x, 2) == 1 end)
    assert result == __?
  end

  think "reversal" do
    numbers = 1..10
    assert Enum.reverse(numbers) == __?
  end

  think "shuffle" do
    numbers = 1..10
    assert_? Enum.shuffle(numbers) == numbers
  end

  think "slicing" do
    numbers = 1..10
    assert Enum.slice(numbers, 2, 2) == __?
  end

  think "slicing goes too far" do
    numbers = 1..10
    assert Enum.slice(numbers, 2, 100) == __?
  end

  think "sorting" do
    numbers = [1, 6, 3, 8, 4, 2, 9, 5, 7]
    assert Enum.sort(numbers) == __?
  end

  think "unique items only, please" do
    numbers = [1, 1, 2, 3, 3, 4]
    assert Enum.uniq(numbers) == __?
  end

  think "splitting" do
    numbers = [1, 2, 3, 4]
    { left, right } = Enum.split(numbers, 2)
    assert left == __?
    assert right == __?
  end

  think "splitting while function is true" do
    numbers = 1..10
    { left, right} = Enum.split_while(numbers, fn (x) -> x < 5 end)
    assert left == __?
    assert right == __?
  end

  think "taking some items" do
    numbers = 1..10
    assert Enum.take(numbers, 2) == __?
  end

  think "taking some items the other way" do
    numbers = 1..10
    assert Enum.take(numbers, -2) == __?
  end

  think "taking every so often" do
    numbers = 1..10
    assert Enum.take_every(numbers, 3) == __?
  end

  think "taking while we can" do
    numbers = 1..10
    assert Enum.take_while(numbers, fn (x) -> x < 5 end) == __?
  end
end
