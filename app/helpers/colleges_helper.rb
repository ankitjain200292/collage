module CollegesHelper
  
  def searchitems(search,model,searchby)
    if search  
      model.paginate( :conditions => [searchby +' LIKE ?', "%#{search}%"],:page => params[:page], :per_page => 10,:order => 'name')
    else  
      model.paginate(:page => params[:page], :per_page => 10,:order => 'name') 
    end  
  end
end
