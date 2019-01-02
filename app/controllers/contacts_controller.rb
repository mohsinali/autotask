class ContactsController < ApplicationController
  before_action :authenticate_user!

  def index
    @contacts= Contact.all
  end

  def show
    @contact= Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save

      redirect_to contacts_path, :notice => "contact save!"
    else
      render :new
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(contact_params)
      redirect_to contacts_path, :notice => "contact updated"
    else
      render 'edit'
    end
  end



  def destroy
    @contact =Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path, :notice => "contact destroy !"

  end

  def get_contacts_by_organization
    @contacts = Contact.where("organization_id = ?", params[:organization_id])
    respond_to do |format|
      format.html do
        redirect_to '/'
      end
      format.json { render json: @contact.to_json }
    #https://stackoverflow.com/questions/48462992/dynamic-select-dropdown-rails-5-ajax
  end
  end 


  private

    def contact_params
      params.require(:contact).permit(:name)
    end
end


