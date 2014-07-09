Rails.application.routes.draw do
  get 'upload/new'

  get 'upload/create'

  get 'upload/show'

  root 'upload#new'

end
