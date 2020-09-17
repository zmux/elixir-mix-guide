defmodule KVServer.CommandTest do
  use ExUnit.Case, async: true
  doctest KVServer.Command

  setup ctx do
    _ = start_supervised!({KV.Registry, name: ctx.test})
    %{registry: ctx.test}
  end

  test "create bucket", %{registry: registry} do
    assert KVServer.Command.run({:create, "shopping"}, registry) == {:ok, "OK\r\n"}
  end
end
