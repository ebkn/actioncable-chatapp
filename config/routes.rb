Rails.application.routes.draw do
  root 'groups#show'
  mount ActionCable.server => '/cable'
end
