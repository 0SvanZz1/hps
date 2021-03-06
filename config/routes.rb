Rails.application.routes.draw do

  resources :lojas
  resources :estadias do
    get 'finalizar', to: 'estadias#finalizar'
  end
  resources :cargos
  resources :usuarios
  resources :veiculos
  resources :vagas
  resources :convenios
  resources :tipo_veiculos
  resources :planos
  resources :clientes
  get 'painel-de-vagas', to: 'painel#index'
  get 'api/dashboard', to: 'dashboard#index'
  get 'api/dashboard/usuarios-por-tipo', to: 'dashboard#usuario_por_tipo'
  get 'dashboard/grafico', to: 'dashboard#grafico'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
