class ParticipantsController < ApplicationController
  protect_from_forgery :except => [:new, :create, :show]


  # GET /participants/1
  # GET /participants/1.json
  def show
    @participant = Participant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @participant }
    end
  end

  # GET /participants/new
  # GET /participants/new.json
  def new
    @participant_old = Participant.find(:first, :conditions => [ "worker_id = ?", params[:workerId]])
    
    if @participant_old == nil
      @participant = Participant.new
      @participant.assignment_id = params[:assignmentId]
      @participant.hit_id = params[:hitId]
      @participant.worker_id = params[:workerId]
      @participant.ip_addr = request.remote_ip
      @participant.cond = rand(5)
    else
      @participant = @participant_old.dup
    end


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @participant }
    end
  end


  # POST /participants
  # POST /participants.json
  def create
    @participant = Participant.new(params[:participant])

    if @participant.save

      redirect_to('https://www.mturk.com/mturk/externalSubmit?condition='+@participant.cond.to_s+'&participantId='+@participant.id.to_s+'&assignmentId='+@participant.assignment_id.to_s+'&hitId='+@participant.hit_id.to_s+'&workerId='+@participant.worker_id.to_s+'') 


      ##redirect_to('https://workersandbox.mturk.com/mturk/externalSubmit?condition='+@participant.cond.to_s+'&participantId='+@participant.id.to_s+'&assignmentId='+@participant.assignment_id.to_s+'&hitId='+@participant.hit_id.to_s+'&workerId='+@participant.worker_id.to_s+'') 

    else
      render :action => "new" 
    end
  end


end
