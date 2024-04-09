import Config

config :kv, :routing_table, [{?a..?z, node()}]

if config_env() == :prod do
  config :kv, :routing_table, [
    {?a..?m, :"foo@Glens-MacBook-Pro-2"},
    {?n..?z, :"bar@Glens-MacBook-Pro-2"}
  ]
end
