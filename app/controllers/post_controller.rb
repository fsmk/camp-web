class PostController < ApplicationController
  def contact
    @contact = Contact.new
  end
end
