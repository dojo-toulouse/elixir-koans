
Koans.About_testing.start_exUnit!

defmodule About_testing do
    use FakeUnit.Case
    use Koans.About_testing

    test "We shall contemplate truth by testing reality, via asserts." do
        assert __?
    end

    test "When reality lie, we shall refute truth" do
        refute __?
    end

    test "Enlightenment may be more easily achieved with appropriate messages." do
        assert __?, "This should be true -- Please fix this"
    end

    test "To understand reality, we must compare our expectations against reality." do
        expected_value = __?
        actual_value = 1 + 1

        assert expected_value == actual_value
    end

    test "Some ways of asserting equality are better than others, or not" do
        __? 2, 2
    end

    test "Assertions are smart" do
        try do
            assert 1 == 2
        rescue
            equal_error in [ExUnit.ExpectationError] ->
                expected_operator = __?
                assert equal_error.message == "Expected 1 to be #{expected_operator} 2"
        end

        try do
            assert 1 > 2
        rescue
            greater_error in [ExUnit.ExpectationError] ->
                expected_operator = __?
                assert greater_error.message == "Expected 1 to be #{expected_operator} 2"
        end

    end
end

