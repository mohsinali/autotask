class MeetingsController < ApplicationController
 
  before_action :authenticate_user!
  before_action :set_meeting, only: [:edit,:update,:destroy]

  # GET /meetings
  # GET /meetings.json
  def index
    @meetings = Meeting.all
    @organizations = Organization.all
    @meetings = @user.meetings
    @contacts = Contact.where("Organization_id = ?", Organization.first.id)
     @contact = Contact.where("id = ?", params[:contact_id])
  end

  # GET /meetings/1
  # GET /meetings/1.json
  def show
    @meeting= Meeting.find(params[:id])  

  end

  # GET /meetings/new
  def new
    @meeting = Meeting.new
     @user = current_user
      @organizations = Organization.all
      @contacts = Contact.where("Organization_id = ?", Organization.first.id) 
 end

  # GET /meetings/1/edit
  def edit
  end

  # POST /meetings
  # POST /meetings.json
  def create
     @user = current_user
    @meeting =  current_user.meetings.build(meeting_params)
    @organizations = Organization.all
    @contacts = Contact.where("Organization_id = ?", Organization.first.id) 
   
                                                                                                                                                                                                                                                                     
    respond_to do |format|
      if @meeting.save
        format.html { redirect_to @meeting, notice: 'Meeting was successfully created.' }
        format.json { render :show, status: :created, location: @meeting }
      else
        format.html { render :new }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meetings/1
  # PATCH/PUT /meetings/1.json
  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to @meeting, notice: 'Meeting was successfully updated.' }
        format.json { render :show, status: :ok, location: @meeting }
      else
        format.html { render :edit }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/1
  # DELETE /meetings/1.json
  def destroy
    @meeting.destroy
    respond_to do |format|
      format.html { redirect_to meetings_url, notice: 'Meeting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def update_contacts
    @contacts = Contact.where("organization_id = ?", params[:organization_id])
    respond_to do |format|
      format.js
    end
  end
 

  
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
    @meeting = current_user.meetings.find params[:id]
  end

 

    # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_params
      params.require(:meeting).permit(:title, :date, :start_time, :end_time, :duration, :booked_by,:agenda, :call_recording, :test_call, :cancel_call, :setup_call, :concierage,:user_id,:organization_id ,:contact_id, participants_attributes: [:connect_type,:connect_address,:participant_type,:call_type,:org_site,:dial_in,:QM_dialout,:audio,:webRTC,:ISDN,:IP,:URL,:external_room])
    end
end

