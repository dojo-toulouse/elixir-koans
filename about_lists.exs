ExUnit.start

defmodule About_Lists do
    use ExUnit.Case
    use Koans

    test "Create your first list" do
        a_list = __?
        assert is_list(a_list)
    end

    test "Getting list lenght is a kernel feature" do
        a_list = [1, 2, 3]
        assert length(a_list) == __?
    end

    test "Elixir provide special operator to concatenate lists" do
        a_list = [1, 2]
        assert a_list ++ [3] == __?
    end

    test "Elixir provide special operator to remove element from list" do
        a_list = [1, 2, 3]
        assert a_list -- [2] == __?
    end

    test "Only first element is removed with truncate operator" do
        a_list = [:foo, :bar, :foo]
        assert a_list -- [:foo] == __?
    end

    test "Truncate operator do nothing when element not in list" do
        a_list = [:foo, :bar]
        assert_? a_list -- [:baz] == [:foo, :bar]
    end


end
