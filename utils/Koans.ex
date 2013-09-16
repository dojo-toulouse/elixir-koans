
defexception Koans.NotFilledValueError, message: IO.ANSI.escape("%{blue, bright}Please fill value")

defexception Koans.MeditateWarning, content: "" do
    def message(warning) do
        IO.ANSI.escape("%{magenta, bright}Please meditate: %{blue}#{warning.content}", true)
    end
end

defmodule Koans do
    @doc false
    defmacro __using__([]) do
        quote do
            import Koans, only: [__?: 0, __?: 2, exUnit_started?: 0, exUnit_Case_used?: 0, meditate: 1]
            def assert_equal actual, expected do
                meditate "ExUnit don't provide assert_equal, you may implement it"
            end
            def assert_equals actual, expected do
                assert_equal actual, expected
            end
            defoverridable [assert_equal: 2, assert_equals: 2]
        end
    end

    defmacro __? do
        quote do
            raise Koans.NotFilledValueError
        end
    end

    defmacro __?(_, _) do
        quote do
            raise Koans.NotFilledValueError
        end
    end


    defmacro exUnit_Case_used? do
        quote do
            ExUnit.Case in __ENV__.requires
        end
    end

    def meditate(message) do
        raise Koans.MeditateWarning, content: message
    end

    def exUnit_started? do
        Process.whereis(ExUnit.Server)
    end
end
