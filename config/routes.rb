Rails.application.routes.draw do

  # when send confirmation direct user to confiramation update as signed user
  as :user do 
    put 'user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation 
  end 
    devise_for :users, controllers: { 
    regestrations: 'regestrations', 
    configurations: 'confirmations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index" 

end
