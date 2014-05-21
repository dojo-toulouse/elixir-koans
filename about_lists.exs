#!/usr/bin/env elixir

ExUnit.start

defmodule About_Lists do
    use ExUnit.Case
    use Koans

    think "Create your first list" do
        a_list = __?
        assert is_list(a_list)
    end

    think "Getting list lenght is a kernel feature" do
        a_list = [1, 2, 3]
        assert length(a_list) == __?
    end

    think "Elixir provide special operator to concatenate lists" do
        a_list = [1, 2]
        assert a_list ++ [3] == __?
    end

    think "Elixir provide special operator to remove element from list" do
        a_list = [1, 2, 3]
        assert a_list -- [2] == __?
    end

    think "Only first element is removed with truncate operator" do
        a_list = [:foo, :bar, :foo]
        assert a_list -- [:foo] == __?
    end

    think "Truncate operator do nothing when element not in list" do
        a_list = [:foo, :bar]
        assert_? a_list -- [:baz] == [:foo, :bar]
    end

    think "The in operator test if element is present inner an enum" do
        a_list = [:foo, :bar]
        assert_? :bar in a_list
    end

end
