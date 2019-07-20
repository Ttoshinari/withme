Rails.application.routes.draw do
  root 'top#index'
  get 'mypage/top'
  get 'mypage/edit'
end
