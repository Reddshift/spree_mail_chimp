class NewsletterSubscriptionsController < Spree::BaseController
  def create
    subscription = NewsletterSubscription.create(:email => params[:email])
    if subscription.save
      flash[:notice] = "Thanks for signing up."
    else
      flash[:error] = "Couldn't sign you up, #{subscription.errors.full_messages.join(', ').downcase}"
    end
    redirect_to :back
  end

  def subscribe
    error = NewsletterSubscription.subscribe_to_list(params[:id], params[:email], {'FNAME' => params[:firstname]})
    if error
      flash[:error] = "Could not subscribe user #{error}"
    else
      flash[:notice] = "Thanks for signing up."
    end
    redirect_to :back
  end
end