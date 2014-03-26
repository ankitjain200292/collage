class Admin::CollegesController < ApplicationController
  before_action :set_college, only: [:show, :edit, :update, :destroy]

  # GET /colleges
  # GET /colleges.json
  def index
    
    @colleges = searchitems(params[:search],College,'name')
    
  end

  # GET /colleges/1
  # GET /colleges/1.json
  def show
  end

  # GET /colleges/new
  def new
    @college = College.new
    @states = State.all
    @cities = City.all
  end

  # GET /colleges/1/edit
  def edit
  end

  # POST /colleges
  # POST /colleges.json
  def create
    @college = College.new(college_params)
    #raise params[:state_id]
    if @college.save
      redirect_to new_admin_college_stream_path(:episode => @college.id) 
      #format.html { redirect_to admin_college_path(@college), notice: 'College was successfully created.' }
      #format.json { render action: 'show', status: :created, location: @college }
    else
      render action: 'new' 
    end
  end

  # PATCH/PUT /colleges/1
  # PATCH/PUT /colleges/1.json
  def update
    
    if @college.update(college_params)
      format.html { redirect_to admin_college_path(@college), notice: 'College was successfully updated.' }
    else
      render action: 'edit' 
    end
  end

  # DELETE /colleges/1
  # DELETE /colleges/1.json
  def destroy
    @college.destroy
    respond_to do |format|
      format.html { redirect_to colleges_url }
      format.json { head :no_content }
    end
  end

  def find_cities
    @state_id = params[:state_id]
    @state = State.find(@state_id)
    @cities = @state.cities.all
    city = Hash.new
    @cities.each do |cource|
      city[cource.id] = cource.name 
    end
    
    render :json => city
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_college
    @college = College.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def college_params
    params.require(:college).permit(:name, :information, :year, :address1, :address2, :state_id , :city_id, :pincode, :landline, :mobile, :collage_type, :tution_fee, :college_website, :college_email, :facebook_link, :twitter_link, :linkedin_link)
  end
end
