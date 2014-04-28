class ContactController < ApplicationController

  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create params[:contact]
    if @contact.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end