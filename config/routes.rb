Rails.application.routes.draw do
  resources :newsletter_subscriptions, :only => :create do
    post :subscribe, :on => :member
  end  

  namespace :admin do
      resource  :mail_chimp_settings
  end
end
