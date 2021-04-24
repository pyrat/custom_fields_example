class ApplicationController < ActionController::Base
  protected

  def set_site
    @site = Site.find params[:site_id]
  end
end
