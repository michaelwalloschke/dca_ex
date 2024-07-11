config :auth, Auth.Guardian,
  issuer: "DCA Auth",
  secret_key:
    System.get_env("DCA_GUARDIAN_SECRET_KEY") or
      "XLP5YXtJZK1i3MJQp7PSFK9y9BoehcEHaIrx5JblZrEjwwXp35iIfvFRMVy0SJH7"
