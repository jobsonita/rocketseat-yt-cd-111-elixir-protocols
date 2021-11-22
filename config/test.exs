import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :polimorfismo, PolimorfismoWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "31lCLadtuDPgYVubyjp+L/KB+V/CUFIkKw8BgAB4nMblsBwbIuUb5rRt+PnWH57D",
  server: false

# In test we don't send emails.
config :polimorfismo, Polimorfismo.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
