class TenantsController < ApplicationController
  #before_action :set_tenant, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search]
      @tenants = Tenant.search(params[:search]).order("created_at DESC")
    else
      @tenants = Tenant.all
    end
  end

  def show
    @tenant = Tenant.find(params[:id])
  end

  def new
    @wizard = ModelWizard.new(Tenant, session, params).start
    @tenant = @wizard.object
  end

  def create
    @wizard = ModelWizard.new(Tenant, session, params, tenant_params).continue
    @tenant = @wizard.object
    if @wizard.save
      if params[:tenant][:house].present?
        params[:tenant][:house][:house_ids].each do |house|
          # House.where(id: house).update_all(status: "occupied")
          Assign.create(tenant_id: @wizard.object.id, house_id: house)
        end
      end
      redirect_to @tenant, notice: "Tenant created!"
    else
      render :new
    end
  end

  def edit
    @tenant = Tenant.find(params[:id])
  end

  def update
    @wizard = ModelWizard.new(@tenant, session, params, tenant_params).continue
    if @wizard.save
      redirect_to @tenant, notice: 'Tenant updated.'
    else
      render :edit
    end
  end

  def destroy
    @tenant.destroy
    redirect_to tenants_url
  end

  def search
    query = params[:query]
    @properties = Property.joins(:houses).where(houses: {status: "vacant"}).where("estate LIKE ? OR plot_no LIKE ?", "%#{query}%", "%#{query}%")

    array_data = []
    @properties.pluck(:estate, :plot_no).each do |p|
      array_data.push(p.join(" "))
    end

    render json: {houses: array_data}
  end

  def search_house
    query = params[:query].split(" ")
    @houses = House.joins(:property).where(status: "vacant").where("properties.estate LIKE ? OR properties.plot_no LIKE ?", "%#{query[0..(query.length-2)].join("")}%", "%#{query[0..(query.length-2)].join("")}%")
  end

  private

  def load_tenant
    @tenant = Tenant.find_by(id:params[:id])
  end

  def tenant_params
    return params unless params[:tenant]

    params.require(:tenant).permit(:current_step,
                                   :fname,
                                   :lname,
                                   :address,
                                   :town,
                                   :national_id,
                                   :phone,
                                   :status,
                                   :assigns_attributes => [:tenant_id, :houses_id])
  end

end  
