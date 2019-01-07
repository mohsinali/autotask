class MeetingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  # GET /meetings
  # GET /meetings.json
  def index
    @meetings = Meeting.all
    @organizations = Organization.all
    @contacts = Contact.where("Organization_id = ?", Organization.first.id)
  end

  # GET /meetings/1
  # GET /meetings/1.json
  def show
    
    
  end

  # GET /meetings/new
  def new
    @meeting = Meeting.new
    @organizations = Organization.all
    @contacts = Contact.where("Organization_id = ?", Organization.first.id)


  # GET /meetings/1/edit
  def edit
  end

  # POST /meetings
  # POST /meetings.json
  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.operator = current_user.name
    @meeting.org_name = @organization.name
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
      @meeting = Meeting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_params
      params.require(:meeting).permit(:title, :date, :start_time, :end_time, :duration, :org_name, :booked_by, :operator, :agenda, :call_recording, :test_call, :cancel_call, :setup_call, :concierage, :organization_id, :user_id, participants_attributes: [:connect_type,:connect_address,:participant_type,:call_type,:org_site,:dial_in,:QM_dialout,:audio,:webRTC,:ISDN,:IP,:URL,:external_room])
    end
end
end
