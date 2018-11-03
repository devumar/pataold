class HousesController < ApplicationController
  def index
  @houses = House.status
  end

  def new
    @house = House.new
  end
  def show 
  end

  def create
    @house = House.new(house_params)
    @house.property = Property.find params[:house][:property_id]
    if @house.save
       redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def house_params
    params.require(:house).permit( :unit_type, :unit_name, :rent_payable, :property_id, :_destroy )
  end
end
