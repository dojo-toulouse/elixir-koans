
unless Koans.About_testing.exUnit_started? do Koans.meditate "you should start a ExUnit server to automatically run your test case" end

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
end

