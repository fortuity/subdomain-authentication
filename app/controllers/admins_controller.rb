class AdminsController < InheritedResources::Base

  actions :index, :show, :new, :edit, :create, :update, :destroy
  respond_to :html, :js, :xml, :json
  before_filter :authenticate_admin!

  protected
    
    def collection
      paginate_options ||= {}
      paginate_options[:page] ||= (params[:page] || 1)
      paginate_options[:per_page] ||= (params[:per_page] || 20)
      @admins ||= end_of_association_chain.paginate(paginate_options)
    end
        
end