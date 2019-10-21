Rails.application.routes.draw do
  resources :aulas
  resources :pessoas
  resources :disciplinas
  resources :cursos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
