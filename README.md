elixir-koans
============
Discover elixir lang by replacing "__?" and "assert_?" to make tests pass.

Install
-------

```bash
  $ git clone git@github.com:dojo-toulouse/elixir-koans.git
  $ cd elixir-koans
```
Get deps

```bash
  $ mix deps.get
```

Compile

```bash
  $ mix compile
```

Launch
-------

**You can safely ignore warnings**

```bash
  $ mix test
```

or

Launch with reload

```bash
 $ mix test.watch

```

Note: On Linux you may need to install [inotify-tools](https://github.com/rvoicilas/inotify-tools/wiki#getting-inotify-tools) for test.watch task.

[Advanced `mix test` options] (http://elixir-lang.org/docs/v1.0/mix/Mix.Tasks.Test.html)
