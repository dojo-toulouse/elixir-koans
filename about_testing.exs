ExUnit.start
unless Process.whereis(ExUnit.Server) do
    raise "Meditate: ExUnit must be started before writing your test case"
# Diving Deeper: comment the line above and move your ExUnit start at the end of the file
end

defmodule About_testing do
    use ExUnit.Case, async: true
    unless ExUnit.Case in __ENV__.requires do
        raise "Meditate: you must declare that your module use ExUnit test case"
    end

    defmacro __? do
        quote do: raise "Please fill value"
    end

    # We shall contemplate truth by testing reality, via asserts."
    def test_the_truth _ do
        assert __?
    end

    # Enlightenment may be more easily achieved with appropriate messages.
    def test_the_truth_with_message _ do
        assert __?, "This should be true -- Please fix this"
    end

    def test_assert_equality _ do
        expected_value = __?
        actual_value = 1 + 1

        assert expected_value == actual_value
    end
end

