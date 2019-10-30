Rails.application.routes.draw do
  devise_for :users
  get 'mypage/top'
  get 'mypage/edit'
  root 'all_posts#all_post'
  resources :all_posts
  get 'new_post', to: 'new_posts#new_post'
  get 'post_detail', to: 'post_details#post_detail'
  post 'send_post', to: 'new_posts#send_post'

  get 'search_cate', to: 'all_posts#search_category'
  get 'search_word', to: 'all_posts#search_word'
  get 'search_pref', to: 'all_posts#search_prefecture'
end
