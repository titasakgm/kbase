class KbsController < ApplicationController
  before_filter :authenticate

  # GET /kbs
  # GET /kbs.json
  def index
    @kbs = Kb.search(params[:q]).page(params[:page]).order("id desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @kbs }
    end
  end

  # GET /kbs/1
  # GET /kbs/1.json
  def show
    @kb = Kb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @kb }
    end
  end

  # GET /kbs/new
  # GET /kbs/new.json
  def new
    @kb = Kb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @kb }
    end
  end

  # GET /kbs/1/edit
  def edit
    @kb = Kb.find(params[:id])
  end

  # POST /kbs
  # POST /kbs.json
  def create
    @kb = Kb.new(params[:kb])

    respond_to do |format|
      if @kb.save
        format.html { redirect_to @kb, :notice => 'Kb was successfully created.' }
        format.json { render :json => @kb, :status => :created, :location => @kb }
      else
        format.html { render :action => "new" }
        format.json { render :json => @kb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kbs/1
  # PUT /kbs/1.json
  def update
    @kb = Kb.find(params[:id])

    respond_to do |format|
      if @kb.update_attributes(params[:kb])
        format.html { redirect_to @kb, :notice => 'Kb was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @kb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kbs/1
  # DELETE /kbs/1.json
  def destroy
    @kb = Kb.find(params[:id])
    @kb.destroy

    respond_to do |format|
      format.html { redirect_to kbs_url }
      format.json { head :ok }
    end
  end
end
