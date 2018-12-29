class ExternalsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_external, only: [:show, :edit, :update, :destroy]

  # GET /externals
  # GET /externals.json
  def index
    @externals = External.all
  end

  # GET /externals/1
  # GET /externals/1.json
  def show
  @external = External.find(params[:id])
  @commentable = @external
  @comments = @commentable.comments
  @comment = Comment.new
  end

  # GET /externals/new
  def new
    @external = External.new
  end

  # GET /externals/1/edit
  def edit
  end

  # POST /externals
  # POST /externals.json
  def create
    @external = External.new(external_params)

    respond_to do |format|
      if @external.save
        format.html { redirect_to @external, notice: 'External was successfully created.' }
        format.json { render :show, status: :created, location: @external }
      else
        format.html { render :new }
        format.json { render json: @external.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /externals/1
  # PATCH/PUT /externals/1.json
  def update
    respond_to do |format|
      if @external.update(external_params)
        format.html { redirect_to @external, notice: 'External was successfully updated.' }
        format.json { render :show, status: :ok, location: @external }
      else
        format.html { render :edit }
        format.json { render json: @external.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /externals/1
  # DELETE /externals/1.json
  def destroy
    @external.destroy
    respond_to do |format|
      format.html { redirect_to externals_url, notice: 'External was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_external
      @external = External.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def external_params
      params.require(:external).permit(:name, :questmark_reference, :room, :organization_id, call_testing_attributes:[:contact_name, :contact_email , :contact_phone, :ip_address, :url , :isdn , :skype_detail, :other, :testing_status, :testing_with, :testing_method, :date, :room])
    end
end
