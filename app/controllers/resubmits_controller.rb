class ResubmitsController < ApplicationController
  protect_from_forgery :except => [:new, :create, :show]

  # GET /resubmits
  # GET /resubmits.json
  def index
    @resubmits = Resubmit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resubmits }
    end
  end

  # GET /resubmits/new
  # GET /resubmits/new.json
  def new
    @resubmit = Resubmit.new

    @resubmit.assignment_id = params[:assignmentId]
    @resubmit.hit_id = params[:hitId]
    @resubmit.worker_id = params[:workerId]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resubmit }
    end
  end


  # POST /resubmits
  # POST /resubmits.json
  def create
    @resubmit = Resubmit.new(params[:resubmit])

      if @resubmit.save
#        redirect_to('https://www.mturk.com/mturk/externalSubmit?participantId='+@resubmit.id.to_s+'&assignmentId='+@resubmit.assignment_id.to_s+'&hitId='+@resubmit.hit_id.to_s+'&workerId='+@resubmit.worker_id.to_s+'&cond=1') 
      redirect_to resubmit_path(@resubmit.id) 
      else
        render action: "new" 
      end
  end

  # PUT /resubmits/1
  # PUT /resubmits/1.json
  def update
    @resubmit = Resubmit.find(params[:id])

    respond_to do |format|
      if @resubmit.update_attributes(params[:resubmit])
        format.html { redirect_to @resubmit, notice: 'Resubmit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @resubmit.errors, status: :unprocessable_entity }
      end
    end
  end



  # GET /participants/1
  # GET /participants/1.json
  def show
    @resubmit = Resubmit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resubmit }
    end
  end

end
