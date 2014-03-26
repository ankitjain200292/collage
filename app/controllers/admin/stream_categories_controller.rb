class Admin::StreamCategoriesController < ApplicationController
  before_action :set_stream_category, only: [:show, :edit, :update, :destroy]

  # GET /stream_categories
  # GET /stream_categories.json
  def index
    @stream_categories = searchitems(params[:search],StreamCategory,'name')
  end

  # GET /stream_categories/1
  # GET /stream_categories/1.json
  def show
  end

  # GET /stream_categories/new
  def new
    @stream_category = StreamCategory.new
  end

  # GET /stream_categories/1/edit
  def edit
  end

  # POST /stream_categories
  # POST /stream_categories.json
  def create
    @category = Category.find(params[:stream_category][:id])
    @stream_category = @category.stream_categories.create(stream_category_params)

    respond_to do |format|
      if @stream_category.save
        format.html { redirect_to admin_stream_category_path(@stream_category), notice: 'Stream category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @stream_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @stream_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stream_categories/1
  # PATCH/PUT /stream_categories/1.json
  def update
    respond_to do |format|
      if @stream_category.update(stream_category_params)
        format.html { redirect_to admin_stream_category_path(@stream_category), notice: 'Stream category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @stream_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stream_categories/1
  # DELETE /stream_categories/1.json
  def destroy
    @stream_category.destroy
    respond_to do |format|
      format.html { redirect_to admin_stream_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stream_category
      @stream_category = StreamCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stream_category_params
      params.require(:stream_category).permit(:name,:stream_category_id)
    end
end
