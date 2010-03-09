class SitesController < InheritedResources::Base
  
  actions :index, :show
  respond_to :html, :js, :xml, :json
  
  def show
    @site = Site.find_by_name(params[:site_id])
    show!
  end

  protected
    
    def collection
      paginate_options ||= {}
      paginate_options[:page] ||= (params[:page] || 1)
      paginate_options[:per_page] ||= (params[:per_page] || 20)
      @sites ||= end_of_association_chain.paginate(paginate_options)
    end
        
end
