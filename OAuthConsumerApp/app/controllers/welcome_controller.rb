class WelcomeController < ApplicationController
  def index
    if(current_user)
      @consumer_tokens = TestToken.all :conditions => {:user_id => current_user.id}

      if @consumer_tokens.first
        @token = @consumer_tokens.first.client
        render inline @token.get("/api/v1/show").body
      else
        redirect_to '/oauth_consumers/test'
      end
    else
      redirect_to new_user_registration_path
    end
  end
end
