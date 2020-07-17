class CallTestingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_call_testing, only: [:show, :edit, :update, :destroy]

  # GET /call_testings
  # GET /call_testings.json
  def index
    @call_testings = CallTesting.all
  end

  # GET /call_testings/1
  # GET /call_testings/1.json
  def show
  end

  # GET /call_testings/new
  def new
    @call_testing = CallTesting.new
  end

  # GET /call_testings/1/edit
  def edit
  end

  # POST /call_testings
  # POST /call_testings.json
  def create
    @call_testing = CallTesting.new(call_testing_params)

    if @call_testing.save

      redirect_to contacts_path, :notice => "save!"
    else
      render :new
    end
  end

  # PATCH/PUT /call_testings/1
  # PATCH/PUT /call_testings/1.json
  def update
    respond_to do |format|
      if @call_testing.update(call_testing_params)
        format.html { redirect_to @call_testing, notice: 'Call testing was successfully updated.' }
        format.json { render :show, status: :ok, location: @call_testing }
      else
        format.html { render :edit }
        format.json { render json: @call_testing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call_testings/1
  # DELETE /call_testings/1.json
  def destroy
    @call_testing.destroy
    respond_to do |format|
      format.html { redirect_to call_testings_url, notice: 'Call testing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call_testing
      @call_testing = CallTesting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def call_testing_params
      params.require(:call_testing).permit(:contact_name, :contact_email, :contact_phone, :ip_address, :url, :isdn, :skype_detail, :other, :testing_status, :testing_with, :testing_method, :testing_with_method,:date, :room, :external_id)
    end
end
