class CollegesController < ApplicationController
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

   private
  # Use callbacks to share common setup or constraints between actions.
  def set_college
    @college = College.find(params[:id])
  end
  
end
