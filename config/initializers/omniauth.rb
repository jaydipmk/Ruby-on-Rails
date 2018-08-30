OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '223601218747-g13v5ehc6tme4c6a33hvqkvao7ofsb3p.apps.googleusercontent.com',
  'Rioq-zKJcOyRu-7-Q86DWRc_', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end