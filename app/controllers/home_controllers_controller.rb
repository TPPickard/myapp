class HomeControllersController < ApplicationController
  # GET /home_controllers
  # GET /home_controllers.xml
  def index
    @home_controllers = HomeController.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @home_controllers }
    end
  end

  # GET /home_controllers/1
  # GET /home_controllers/1.xml
  def show
    @home_controller = HomeController.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @home_controller }
    end
  end

  # GET /home_controllers/new
  # GET /home_controllers/new.xml
  def new
    @home_controller = HomeController.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @home_controller }
    end
  end

  # GET /home_controllers/1/edit
  def edit
    @home_controller = HomeController.find(params[:id])
  end

  # POST /home_controllers
  # POST /home_controllers.xml
  def create
    @home_controller = HomeController.new(params[:home_controller])

    respond_to do |format|
      if @home_controller.save
        format.html { redirect_to(@home_controller, :notice => 'Home controller was successfully created.') }
        format.xml  { render :xml => @home_controller, :status => :created, :location => @home_controller }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @home_controller.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /home_controllers/1
  # PUT /home_controllers/1.xml
  def update
    @home_controller = HomeController.find(params[:id])

    respond_to do |format|
      if @home_controller.update_attributes(params[:home_controller])
        format.html { redirect_to(@home_controller, :notice => 'Home controller was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @home_controller.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /home_controllers/1
  # DELETE /home_controllers/1.xml
  def destroy
    @home_controller = HomeController.find(params[:id])
    @home_controller.destroy

    respond_to do |format|
      format.html { redirect_to(home_controllers_url) }
      format.xml  { head :ok }
    end
  end
end
