class SubdomainsController < InheritedResources::Base
  belongs_to :user

  actions :index, :show, :new, :edit, :create, :update, :destroy
  respond_to :html, :js, :xml, :json
  before_filter :find_user, :only => [:new, :edit, :create, :update, :destroy]

  def create
    create!{ user_url(@user) }
  end

  def destroy
    destroy!{ user_url(@user) }
  end

  protected

    def collection
      paginate_options ||= {}
      paginate_options[:page] ||= (params[:page] || 1)
      paginate_options[:per_page] ||= (params[:per_page] || 20)
      @subdomains ||= end_of_association_chain.paginate(paginate_options)
    end

    def find_user
      @user = User.find(params[:user_id])
      unless current_user == @user
        flash[:alert]  = "Are you logged in properly? You are not allowed to create or change someone else's subdomain."
        redirect_to user_path(@user)
      end
    end

end