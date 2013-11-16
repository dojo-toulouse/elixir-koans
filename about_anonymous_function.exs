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

    think "Existing a short cut to declare anonymous function" do
        a_variable = &("Hello #{&1} !" )

       assert a_variable.("John") == __?
    end

    think "Anonymous function with multiple implementation body ! Amazing matching power !" do
        a_variable = fn
                       ( "first body" ) -> "Running body 1"
                       ( "second body") -> "Running body 2"
                     end

        assert a_variable.("first body")  == __?
        assert a_variable.("second body") == __?
    end

    think "Another anonymous function with multiple implementation body" do
        a_variable = fn
                       ( "I want an integer" ) -> 42
                       ( "I want a float") -> 1.9
                     end

        assert a_variable.("I want an integer") == __?
        assert a_variable.( "I want a float") == __?
    end


    think "It's possible to pass a function in argument of function !" do
      add_five_function = fn( value ) -> 5 + value end
      add_ten_after_call_add_five_function = fn( function, value ) -> function.(value) + 10 end

      assert add_ten_after_call_add_five_function.( add_five_function, 5 ) == __?

    end

end
