class OrganizationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_organization, only: [:show, :edit, :update, :destroy]

  # GET /organizations
  # GET /organizations.json
  def index
    @organizations = Organization.all
    @organizations = Organization.order(:name).page params[:page]
    
  end

  # GET /organizations/1
  # GET /organizations/1.json
  def show
     @organization = Organization.find(params[:id])
   
  end

  # GET /organizations/new
  def new
    @organization = Organization.new(user_id: current_user)

  end

  # GET /organizations/1/edit
  def edit
  end

  # POST /organizations
  # POST /organizations.json
  def create
    @organization = current_user.organizations.new(organization_params)

    if @organization.save
      if organization_params['user_type']== "external"
        redirect_to new_external_path
      else
        redirect_to @organization, notice: 'Organization was successfully created.'
      end
    else
      respond_to do |format|
        format.html { render :new }
      end            
    end
     
    
  end

  # PATCH/PUT /organizations/1
  # PATCH/PUT /organizations/1.json
  def update
    respond_to do |format|
      if @organization.update(organization_params)
        format.html { redirect_to @organization, notice: 'Organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization }
      else
        format.html { render :edit }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    @organization.destroy
    respond_to do |format|
      format.html { redirect_to organizations_url, notice: 'Organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = current_user.organizations.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_params
      params.require(:organization).permit(:name, :address, :street, :postal_code, :region, :country, :main_phone_contact, :fax, :website, :other_phone ,:org_type, :user_type, contacts_attributes: [:first_name, :last_name, :email, :contact_phone],sites_attributes: [:site_name])
    end
end
