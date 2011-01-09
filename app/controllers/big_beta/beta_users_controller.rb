class BigBeta::BetaUsersController < BigBetaController
  unloadable
  before_filter :require_super_user, :except => [:new, :create]

  # GET /big_beta/beta_users
  # GET /big_beta/beta_users.xml
  def index
    @beta_users = BigBeta::BetaUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beta_users }
    end
  end

  # GET /big_beta/beta_users/1
  # GET /big_beta/beta_users/1.xml
  def show
    @beta_user = BigBeta::BetaUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beta_user }
    end
  end

  # GET /big_beta/beta_users/new
  # GET /big_beta/beta_users/new.xml
  def new
    @beta_user = BigBeta::BetaUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beta_user }
    end
  end

  # GET /big_beta/beta_users/1/edit
  def edit
    @beta_user = BigBeta::BetaUser.find(params[:id])
  end

  # POST /big_beta/beta_users
  # POST /big_beta/beta_users.xml
  def create
    @beta_user = BigBeta::BetaUser.new(params[:big_beta_beta_user])

    respond_to do |format|
      if @beta_user.save
        format.js
        format.html { redirect_to("/", :notice => "You've been added to the waiting list.") }
        format.xml  { render :xml => @beta_user, :status => :created, :location => @beta_user }
      else
        # TODO: 2011-01-08 <tony+bigbeta@tonystubblebine.com> -- Need better
        # error handling for xjs requests.
        format.js
        format.html { render :action => "new" }
        format.xml  { render :xml => @beta_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /big_beta/beta_users/1
  # PUT /big_beta/beta_users/1.xml
  def update
    @beta_user = BigBeta::BetaUser.find(params[:id])

    respond_to do |format|
      if @beta_user.update_attributes(params[:beta_user])
        format.html { redirect_to("/", :notice => 'Updated beta user.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @beta_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /big_beta/beta_users/1
  # DELETE /big_beta/beta_users/1.xml
  def destroy
    @beta_user = BigBeta::BetaUser.find(params[:id])
    @beta_user.destroy

    respond_to do |format|
      format.html { redirect_to("/") }
      format.xml  { head :ok }
    end
  end
end
