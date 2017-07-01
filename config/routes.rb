Rails.application.routes.draw do
  
  devise_for :users



devise_scope :user do
    # write all your routes inside this block
    get 'signin' => 'devise/sessions#new'
  delete 'signout' => 'devise/sessions#destroy'
  get 'signup' => 'devise/registrations#new'
end



  root 'pages#home'
  get '/' => 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
