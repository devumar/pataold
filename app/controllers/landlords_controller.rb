class LandlordsController < ApplicationController


  def index
    @landlords = Landlord.all
  end



  def show
    @landlord = Landlord.find(params[:id])
  end

  def new
    @wizard = ModelWizard.new(Landlord, session, params).start
    @landlord = @wizard.object
  end

  def edit
    @wizard = ModelWizard.new(@landlord, session, params).start
  end

  def create
    @wizard = ModelWizard.new(Landlord, session, params, landlord_params).continue
    @landlord = @wizard.object
    if @wizard.save
      redirect_to @landlord, notice: "Landlord created!"
    else
      render :new
    end
  end

  def update
    @wizard = ModelWizard.new(@landlord, session, params, landlord_params).continue
    if @wizard.save
      redirect_to @landlord, notice: 'Landlord updated.'
    else
      render :edit
    end
  end

  def destroy
    @landlord.destroy
    redirect_to landlords_url
  end

  private

  def load_landlord
    @landlord = Landlord.find_by(id: params[:id])
  end

  def landlord_params
    return params unless params[:landlord]

    params.require(:landlord).permit(:current_step,
                                     :fname,
                                     :oname,
                                     :postal_address,
                                     :town,
                                     :national_id,
                                     :phone,
                                     :email,
                                     :properties_attributes => [:id, :town, :estate,:plot_no, :field_officer, :plot_name, :town, :commission]

    )
  end
end