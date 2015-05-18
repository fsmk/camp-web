class V2015::ContactController < V2015::AppController

  def new
    @contact = @version.contacts.build
  end

  def create
    @contact = @version.contacts.build contact_params
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