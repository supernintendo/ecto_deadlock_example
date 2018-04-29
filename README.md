# EctoDeadlockExample

Example of an application that will not compile due to a module deadlock. The offending code can be found [here](https://github.com/supernintendo/ecto_deadlock_example/blob/master/lib/ecto_deadlock_example/user.ex#L6). See this [issue](https://github.com/elixir-ecto/ecto/issues/2519) for more info. Thanks to [@jkslyby](https://github.com/jkslyby) for finding the exact cause of this.
