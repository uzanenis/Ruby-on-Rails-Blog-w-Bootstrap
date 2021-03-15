Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
    get '/articles/:id/:title' => 'articles#show', :as => :article_with_title
  end
  
end
