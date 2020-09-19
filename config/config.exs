import Config
if Mix.env() == :prod do
  config :kv, :routing_table, [
    {?a..?m, :"foo@Sergeys-MacBook-Pro"},
    {?n..?z, :"bar@Sergeys-MacBook-Pro"},
  ]
end
