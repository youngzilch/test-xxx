class UsrsController < ApplicationController
  # GET /usrs
  # GET /usrs.xml
  def index
    @usrs = Usr.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @usrs }
    end
  end

  # GET /usrs/1
  # GET /usrs/1.xml
  def show
    @usr = Usr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @usr }
    end
  end

  # GET /usrs/new
  # GET /usrs/new.xml
  def new
    @usr = Usr.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @usr }
    end
  end

  # GET /usrs/1/edit
  def edit
    @usr = Usr.find(params[:id])
  end

  # POST /usrs
  # POST /usrs.xml
  def create
    @usr = Usr.new(params[:usr])

    respond_to do |format|
      if @usr.save
        format.html { redirect_to(@usr, :notice => 'Usr was successfully created.') }
        format.xml  { render :xml => @usr, :status => :created, :location => @usr }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @usr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /usrs/1
  # PUT /usrs/1.xml
  def update
    @usr = Usr.find(params[:id])

    respond_to do |format|
      if @usr.update_attributes(params[:usr])
        format.html { redirect_to(@usr, :notice => 'Usr was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @usr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /usrs/1
  # DELETE /usrs/1.xml
  def destroy
    @usr = Usr.find(params[:id])
    @usr.destroy

    respond_to do |format|
      format.html { redirect_to(usrs_url) }
      format.xml  { head :ok }
    end
  end
end
