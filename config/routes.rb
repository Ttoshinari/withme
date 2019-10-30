Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  get 'mypage/top'
  get 'mypage/edit'
end
