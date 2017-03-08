ShopifyApp.configure do |config|
  config.application_name = "Plankify"
  config.api_key = ENV['SHOPIFY_CLIENT_API_KEY']
  config.secret = ENV['SHOPIFY_CLIENT_API_SECRET']
  config.scope = "read_orders, read_products, write_orders, write_products, read_customers, write_customers"
  config.embedded_app = true

  config.webhooks = [
    {topic: "products/update", address: "https://#{ENV['HEROKU_APP_NAME']}.herokuapp.com/webhooks/products_update", format: "json"},
  ]
end
