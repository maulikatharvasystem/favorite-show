Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root 'channels#index'
  root 'tv_shows#index'
    resources :channels
    resources :tv_shows do
      member do
        post :favourite
      end
    end

end
