class UsersController < InheritedResources::Base

  actions :index, :show, :new, :edit, :create, :update, :destroy
  respond_to :html, :js, :xml, :json
  before_filter :find_user, :only => [:edit, :update, :destroy]

  def create
    @user = User.new(params[:user])
    if @user.save
      if @user.respond_to?(:confirm!)
        flash[:notice] = t('devise.confirmations.send_instructions')
        # sign_in @user if @user.class.confirm_within > 0
      else
        flash[:notice] = t('flash.users.create.notice', :default => 'User was successfully created.')
      end
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  protected

    def collection
      paginate_options ||= {}
      paginate_options[:page] ||= (params[:page] || 1)
      paginate_options[:per_page] ||= (params[:per_page] || 20)
      @users ||= end_of_association_chain.paginate(paginate_options)
    end

    def find_user
      @user = User.find(params[:id])
      unless current_user == @user
        flash[:alert]  = "You are not allowed to make changes to someone else's account."
        redirect_to user_path(@user)
      end
    end
end