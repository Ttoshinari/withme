Rails.application.routes.draw do
  get 'mypage/top'
  devise_for :users
  root 'top#index'
end
