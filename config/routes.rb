Rails.application.routes.draw do
  get 'solicitacaos/index'
  
  resources :solicitacaos

  root 'solicitacaos#index'  
end
