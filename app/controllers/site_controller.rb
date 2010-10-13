class SiteController < ApplicationController
  
  skip_before_filter :verify_authenticity_token
  
  def image_upload
    if request.get?
      render :layout => false
    else
      @img_path = ImageUtil.save_image(params[:image])
      render :template => "site/upload_done.html.erb", :layout => false
    end
  end
end
