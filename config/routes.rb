Ucpengine::Engine.routes.draw do
  post 'preview', to: 'preview#show', as: :preview
  
  scope "/:content_class" do
    resources :entries
  end

  root to: 'dashboard#index'
end
