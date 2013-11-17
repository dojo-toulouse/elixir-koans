defmodule About_Named_Functions do
    use ExUnit.Case
    use Koans

    def hello(name) do
      "Hello #{name}"
    end

    test "Declaring and using a named function" do

        assert hello("world!") == __?
    end

    def hello(name, country) do
      "Hello #{name} from #{country}"
    end

    test "Functions are identified by name and number of parameter" do
        assert hello("world", "France!") == __?
    end

    def factorial(0) do 1 end
    def factorial(n) do n * factorial(n-1) end

    test "Pattern matching on function named is usefull too" do
      assert factorial(3) == __?
    end

    def i_can_identify_type(value) when is_atom(value) do
      "#{value} is an atom"
    end

    def i_can_identify_type(value) when is_float(value) do
      "#{value} is a float"
    end

    def i_can_identify_type(value) when is_number(value) do
      "#{value} is a number"
    end

    test "Pattern matching on type with guard clause" do
      assert i_can_identify_type(4.2) == __?
      assert i_can_identify_type(:atom) == __?
      assert i_can_identify_type(5) == __?
    end

end
