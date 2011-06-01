Rails.application.routes.draw do
  resources :newsletter_subscriptions, :only => :create

  namespace :admin do
      resource  :mail_chimp_settings
  end
end
