ExUnit.start

defmodule About_Numbers_and_booleans do
    use ExUnit.Case
    use Koans

    test "Basics numbers types" do
        an_integer = __?
        a_float = 42.0

        assert is_integer(an_integer)

        __? is_float(a_float)

        __? is_float(an_integer)

        __? is_integer(a_float)
    end

    test "Is an hexadecimal number treated as an integer" do
        __? is_integer(0x2A)
    end

    test "Answer to the Ultimate Question of Life, the Universe, and Everything" do
        an_hex = 0x20
        a_dec = 10
        assert an_hex + a_dec == __?
    end

    test "Are booleans integers ?" do
        __? is_integer(true)
        __? is_boolean(0)
    end

    test "Booleans are atoms" do
        assert is_atom(true)
        assert :true == __?
    end
end

defmodule About_Tuples do
    use ExUnit.Case
    use Koans

    test "Tuples" do
        a_tuple = {:foo, :bar}
        assert size(a_tuple) == __?
    end

    test "Can access to tuple element" do
        a_tuple = {:foo, :bar}
        assert elem(a_tuple, 0) == __?
    end

    defmacrop erlang_elem(tuple, index) do
        quote do: :erlang.element(unquote(index), unquote(tuple))
    end

    test "In erlang tuples and lists start at index 1, wich is different in elixir" do
        a_tuple = {:foo, :bar}
        foo_index = 0
        assert elem(a_tuple, foo_index) == erlang_elem(a_tuple, foo_index + __?)
    end

    test "Can set a tuple element" do
        a_tuple = {:foo, :bar}
        baz_tuple = set_elem(a_tuple, 0, :baz)
        # think about immutability
        assert elem(a_tuple, 0) == __?
        assert elem(baz_tuple, 0) == __?
    end

    test "Setting a tuple element that not exists raise an argument error" do
        a_tuple = {:foo, :bar}

        assert_raise ArgumentError, fn -> set_elem(a_tuple, __?, :baz) end
    end

    test "Can insert a tuple element" do
        a_tuple = {:foo, :bar}
        baz_tuple = insert_elem(a_tuple, 2, :baz)
        assert elem(baz_tuple, 2) == __?
    end

    test "Inserting a tuple element raise an argument error if index is invalid" do
        a_tuple = {:foo, :bar}

        assert_raise ArgumentError, fn -> insert_elem(a_tuple, __?, :baz) end
    end

    test "The building blocks of Elixir are tuples of three elements" do
        quoted_block = quote do
            a = 1
            b = 2
            c = size({a, b}) + 1
        end

        assert is_tuple(quoted_block)
        assert size(quoted_block) == __?
    end

    test "We can use tuples to define blocks" do
        unquoted_tuple = unquote {:"{}", [], [1,2,3]}
        # Note: it's an hungarian notation
        # the atom :"{}" represent the function
        # the list [] contains metadatas like the line and module where code is defined
        # the list [1, 2, 3] are arguments passed to the function
        # For more infos see Macros and quote/unquote functions
        assert unquoted_tuple == __?
    end

    test "Are tuples enumerables ?" do
        invalid_argument   = ArgumentError
        undefined_protocol = Protocol.UndefinedError

        assert_raise __?, fn -> Enum.empty?({1, 2, 3}) end
        # Note:
        # Do you smell the underlying machinery that make list and tuple types differents ?
    end

end
