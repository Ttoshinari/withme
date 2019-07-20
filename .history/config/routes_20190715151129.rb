Rails.application.routes.draw do
  get 'mypage/top'
  get 'mypage/edit'
  devise_for :users
  root 'top#index'
end
