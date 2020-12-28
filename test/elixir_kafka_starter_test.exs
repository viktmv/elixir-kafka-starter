defmodule ElixirKafkaStarterTest do
  use ExUnit.Case
  doctest ElixirKafkaStarter

  test "returns `ok`" do
    assert ElixirKafkaStarter.hello() == :ok
  end
end
