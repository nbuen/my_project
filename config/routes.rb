Rails.application.routes.draw do
  get 'book/index/:id' => 'book#index', as: 'book'
  get 'about/index'
  get 'book/lists' => 'startup#index'
  root to: 'startup#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 end
