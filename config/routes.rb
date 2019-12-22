Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :articles
  get 'articles/index'
  get 'articles/show'
  get 'articles/new'
  get 'articles/edit'
  get 'articles/create'
  get 'articles/update'
  get 'articles/destroy'

end
