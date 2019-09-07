Rails.application.routes.draw do
  get 'messages/chatroom'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'all_posts#all_post'
  get 'new_post', to: 'new_posts#new_post'
  get 'post_detail', to: 'post_details#post_detail'
  post 'send_post', to: 'new_posts#send_post'
  get 'chatroom', to: 'messages#chatroom'
  
end
