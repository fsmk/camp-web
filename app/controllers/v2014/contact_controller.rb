class V2014::ContactController < V2014::AppController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new contact_params
    if @contact.save
      flash[:success] = "Thank you for contacting us. We will get back to you soon."
      redirect_to root_url
    else
      render 'new'
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :contact_email, :mobile, :message)
  end

end