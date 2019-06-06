Rails.application.routes.draw do
  root to: 'pages#home'
  post 'messages/create'
end
