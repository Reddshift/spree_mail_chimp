class NewsletterSubscriptionsController < Spree::BaseController
  def create
    subscription = NewsletterSubscription.create(:email => params[:email])
    if subscription.save
      flash[:notice] = "Thanks for signing up."
    else
      flash[:error] = "Couldn't sign you up, #{newsletter_subscription.errors.full_messages.join(', ').downcase}"
    end
    redirect_to :back
  end
end