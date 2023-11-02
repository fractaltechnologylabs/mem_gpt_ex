import Config

config :open_ai_client, OpenAiClient,
  base_url: System.get_env("OPENAI_BASE_URL") || "https://api.openai.com/v1",
  openai_api_key: System.get_env("OPENAI_API_KEY") || raise("OPENAI_API_KEY is not set"),
  openai_organization_id: System.get_env("OPENAI_ORGANIZATION_ID")
