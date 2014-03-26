class Admin::CollegeStreamsController < ApplicationController
  before_action :set_college_stream, only: [:show, :edit, :update, :destroy]

  # GET /college_streams
  # GET /college_streams.json
  def index
    @college_streams = CollegeStream.all
  end

  # GET /college_streams/1
  # GET /college_streams/1.json
  def show
  end

  # GET /college_streams/new
  def new
    @college_stream = CollegeStream.new
  end

  # GET /college_streams/1/edit
  def edit
  end

  # POST /college_streams
  # POST /college_streams.json
  def create
    @college_id = params[:college_id]
    @category_id = params[:category_id];
#    @cource = params[:cource_id];
    (0..@category_id.count-1).each do |i|
      @category = Category.find(@category_id[i])
      if(i==0)
        @cource = params[:cource_id];
      else
        @cource = params["cource_id_#{i}"]
        #@college_streams = @order.line_items.new(:product_id => @product_id[i],:quantity => @quantity[i])
      end
      (0..@cource.count-1).each do |j|
        @stream = CollegeStream.new(:college_id => @college_id,:category_id => @category.id,:stream_category_id =>@cource[j])
        @stream.save
      end
    end
  end

  # PATCH/PUT /college_streams/1
  # PATCH/PUT /college_streams/1.json
  def update
    respond_to do |format|
      if @college_stream.update(college_stream_params)
        format.html { redirect_to @college_stream, notice: 'College stream was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @college_stream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /college_streams/1
  # DELETE /college_streams/1.json
  def destroy
    @college_stream.destroy
    respond_to do |format|
      format.html { redirect_to college_streams_url }
      format.json { head :no_content }
    end
  end
  
  def find_cources
    category_id = params[:product_id]
    @category = Category.find(category_id)
    @cources = @category.stream_categories.all
    a = Hash.new
    @cources.each do |cource|
      a[cource.id] = cource.name 
    end
    
    render :json => a
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_college_stream
      @college_stream = CollegeStream.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def college_stream_params
      params.require(:college_stream).permit(:course_id, :category_id)
    end
end
