
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
            import Koans, only: [__?: 0, __?: 1, __?: 2, meditate: 1]
        end
    end

    defmacro __?(_ // nil, _ // nil) do
        quote do
            raise Koans.NotFilledValueError
        end
    end

    def meditate(message) do
        raise Koans.MeditateWarning, content: message
    end
end

defmodule Koans.About_testing do
    @doc false
    defmacro __using__([]) do
        quote do
            use Koans
            unless Koans.About_testing.exUnit_Case_used? __ENV__ do
                meditate "your module should use ExUnit.Case instead FakeUnit.Case"
            end
            def assert_equal actual, expected do
                meditate "ExUnit don't implement assert_equal, we may implement our"
            end
            defoverridable [assert_equal: 2]
        end
    end

    def exUnit_Case_used? env do
        ExUnit.Case in env.requires
    end

    def exUnit_started? do
        Process.whereis(ExUnit.Server)
    end

end

defmodule FakeUnit.Case do
    @doc false
    defmacro __using__([]) do
        quote do
            import FakeUnit.Case
        end
    end
    def test(message, var) do
    end
    def assert expected do
    end
    def assert expected, message do
    end
    def refute expected do
    end
end