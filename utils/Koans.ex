defmodule Koans.MeditateWarning do
    defexception [:message]
    def message(exception) do
        formated_message = IO.ANSI.format([:magenta, :bright, 'Please meditate: ', :blue, exception.message])
        "#{formated_message}"
    end
end

defmodule Koans do
    @doc false
    defmacro __using__([]) do
        quote do
            import Koans, only: [__?: 0, __?: 1, __?: 2, assert_?: 1, assert_?: 2, meditate: 1, think: 2]
        end
    end

    defmacro __?(_ \\ nil, _ \\ nil) do
        quote do
            meditate @current_meditation
        end
    end

    defmacro assert_?(_ \\ nil, _ \\ nil) do
        quote do
            meditate @current_meditation <> "#{IO.ANSI.format([:red, ' (fill with an assertion)'])}"
        end
    end

    def meditate(subject) do
        raise Koans.MeditateWarning, message: subject
    end

    defmacro think(message, var \\ quote(do: _), contents) do
        quote do
            Module.put_attribute(__MODULE__, :current_meditation, unquote(message))
            unquote contents
            require ExUnit.Case
            ExUnit.Case.test(unquote(message), unquote(var), unquote(contents))
        end
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
        end
    end

    def exUnit_Case_used? env do
        ExUnit.Case in env.requires
    end

    def start_exUnit! do
        unless Koans.About_testing.exUnit_started? do
            Koans.meditate "you should start a ExUnit server to automatically run your test case"
        end
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
    def test(_, _) do
    end
    def assert _ do
    end
    def assert _, _ do
    end
    def refute _ do
    end
    def assert_raise _, _, _ do
    end
end
