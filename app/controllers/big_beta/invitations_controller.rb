class BigBeta::InvitationsController < ApplicationController
  before_filter :require_super_user

  def index
    @beta_users = BigBeta::BetaUser.all
  end

  def new
  end

  def create
    @beta_user = BigBeta::BetaUser.find_or_create_by_email(params[:email])
    @beta_user.set_token!
    @message = params[:message]

    if @beta_user.save and BigBetaMailer.deliver_invitation(@beta_user, @message, current_user)
      #format.html { redirect_to(big_beta_invitations_path(), :notice => "Sent invite to #{@beta_user.email}.") } 
      return redirect_to(big_beta_invitations_index_path(), :notice => "Sent invite to #{@beta_user.email}.") 
    end
  end
end
