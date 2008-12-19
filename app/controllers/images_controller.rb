class ImagesController < ApplicationController
  
  before_filter :login_required, :only => [ :new, :edit, :create, :update, :destroy ]
  caches_page :index, :show
  
  # GET /images
  # GET /images.xml
  def index
    @images = Image.find(:all, :conditions => ["parent_id is NULL"])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @images }
    end
  end

  # GET /images/1
  # GET /images/1.xml
  def show
    @image = Image.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image }
    end
  end

  # GET /images/new
  # GET /images/new.xml
  def new
    @image = Image.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image }
    end
  end

  # GET /images/1/edit
  def edit
    @image = Image.find(params[:id])
  end

  # POST /images
  # POST /images.xml
  def create
    @image = Image.new(params[:image])
    
    if @image.save
      expire_page :action => "index"
      flash[:notice] = 'Image was successfully created.'
      redirect_to(images_path)
    else
      render :action => "new"
    end
  end

  # PUT /images/1
  # PUT /images/1.xml
  def update
    @image = Image.find(params[:id])

    respond_to do |format|
      if @image.update_attributes(params[:image])
        expire_page :action => "show", :id => @image.id
        flash[:notice] = 'Image was successfully updated.'
        format.html { redirect_to(@image) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.xml
  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    expire_page :action => "index"
    respond_to do |format|
      format.html { redirect_to(images_url) }
      format.xml  { head :ok }
    end
  end
end
