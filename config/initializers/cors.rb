Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'https://trains-react-app-i-guess.netlify.app'
  
      resource '*',
        headers: :any,
        methods: [:get, :post, :patch, :delete]
    end
  end