Rails.application.routes.draw do
  post :ajax_upload_content_image,     to: 'content_images#ajax_upload_content_image'

  resources :content_images
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
