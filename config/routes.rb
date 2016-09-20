Rails.application.routes.draw do
  get '*path', to: 'react#show', constraints: { format: 'html' }
end
