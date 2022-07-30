Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins ['https://main--trains-react-app-i-guess.netlify.app', 'http://localhost:3000']
  
      resource '*',
        headers: :any,
        methods: [:get, :post, :patch, :delete]
    end
  end