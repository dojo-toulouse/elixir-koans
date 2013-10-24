ExUnit.start

defmodule About_Numbers_and_booleans do
    use ExUnit.Case
    use Koans

    test "Basics numbers types" do
        an_integer = __?
        a_float = 42.0

        assert is_integer(an_integer)

        assert_? is_float(a_float)

        assert_? is_float(an_integer)

        assert_? is_integer(a_float)
    end

    test "Is an hexadecimal number treated as an integer" do
        assert_? is_integer(0x2A)
    end

    test "Answer to the Ultimate Question of Life, the Universe, and Everything" do
        an_hex = 0x20
        a_dec = 10
        assert an_hex + a_dec == __?
    end

    test "Are booleans integers ?" do
        assert_? is_integer(true)
        assert_? is_boolean(0)
    end

    test "Booleans are atoms" do
        assert is_atom(true)
        assert :true == __?
    end
end
