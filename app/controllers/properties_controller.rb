class PropertiesController < ApplicationController

  def index
    @properties = Property.includes(:houses).all
  end

  def show
   @property = Property.find(params[:id])  
  end

  def new
    @property = Property.new
    3.times { @property.houses.build}
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find_by(id: params[:id])
    if @property.update(property_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def property_params
    # params.require(:property).permit(houses_attributes: [:id, :unit_name, :rent_payable, :_destroy])
      params.require(:property).permit(:town, :estate,:plot_no, :field_officer, :plot_name, :town, :commission, :landlord_id)

  end
end
