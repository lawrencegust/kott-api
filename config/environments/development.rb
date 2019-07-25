Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.action_mailer.default_url_options = {host: 'localhost:8081'}
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
  config.action_mailer.smtp_settings = {
    user_name: 'aa56c4a8062d2e',
    password: '60b4d0a1b818f7',
    address: 'mailtrap.io',
    domain: 'mailtrap.io',
    port: '2525',
    authentication: :cram_md5
  }
end
