class AssignsController < ApplicationController


  def new
    @assign = Assign.new
  end

  def index
     @assigns = Assign.all
  end

  def create
    if assign_params[:house_id].present?
      assign_params[:house_id].each do |id|
         @assign = Assign.new()
         @assign.house_id = id
         @assign.tenant_id = assign_params[:tenant_id] 
          if @assign.save
          else
            render :new
          end
      end
     redirect_to root_path    
    end
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def assign_params
    
    params.require(:assign).permit( :tenant_id, house_id: [] )
  end
end
