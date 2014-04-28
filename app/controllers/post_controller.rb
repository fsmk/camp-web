class PostController < ApplicationController

  def contact
    @contact = Contact.new
  end

  def create_contact
    Contact.create params[:contact]
    render :index
  end

end
