class UsersController < InheritedResources::Base

  actions :index, :show
  respond_to :html, :js, :xml, :json

  protected

    def collection
      paginate_options ||= {}
      paginate_options[:page] ||= (params[:page] || 1)
      paginate_options[:per_page] ||= (params[:per_page] || 20)
      @users ||= end_of_association_chain.paginate(paginate_options)
    end

end