ExUnit.start

defmodule About_Anonymous_Functions do
    use ExUnit.Case
    use Koans

    think "Declaring an anonymous function referenced by a_variable" do
        a_variable = fn -> "Here the body anonymous function !" end
        # and now execute it !
        assert_? a_variable.() == "Here the body anonymous function !"
    end

    think "Anonymous function and parameter" do
        a_variable = fn( name ) -> "Hello #{name} !" end

        assert a_variable.("John") == __?
    end

    think "Anonymous function with multiple implementation body ! Amazing matching power !" do
        a_variable = fn
                       ( "first body" ) -> "Running body 1"
                       ( "second body") -> "Running body 2"
                     end

        assert_? a_variable.("first body") == "Running body 1"
        assert a_variable.( "second body") == __?
    end

    think "Another anonymous function with multiple implementation body" do
        a_variable = fn
                       ( "I want a integer" ) -> 42
                       ( "I want a float") -> 1.9
                     end

        assert a_variable.("I want a integer") == __?
        assert a_variable.( "I want a float") == __?
    end

end
