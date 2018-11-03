class FieldsController < ApplicationController
   before_action :set_field, only: [:show, :edit, :update, :destroy] 

  # GET /users
  # GET /users.json
  def index
    @fields = Field.all
  end

  def import_from_excel
    file = params[:file]
    begin
      # Retreive the extension of the file
      file_ext = File.extname(file.original_filename)
      raise "Unknown file type: #{file.original_filename}" unless [".xls", ".xlsx"].include?(file_ext)
      spreadsheet = (file_ext == ".xls") ? Roo::Excel.new(file.path) : Roo::Excelx.new(file.path)
      header = spreadsheet.row(1)
      (2..spreadsheet.last_row).each do |i|
               Field.create(tenant_id: spreadsheet.row(i)[1], property_id: spreadsheet.row(i)[2],  plot_no: spreadsheet.row(i)[3],  unit_no: spreadsheet.row(i)[4],  amount: spreadsheet.row(i)[5], receipt: spreadsheet.row(i)[6], mode: spreadsheet.row(i)[7])
      end
      flash[:notice] = "Records Imported" 
      redirect_to fields_path 
    rescue Exception => e
      flash[:notice] = "Issues with file"
      redirect_to fields_path 
    end
  end





  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new

  end

  # GET /users/1/edit 
  def edit
  end

  # POST /users
  # POST /users.json
  def create
   
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @filed.update(field_params)
        format.html { redirect_to @field, notice: 'Successfully updated.' }
        format.json { render :show, status: :ok, location: @field }
      else
        format.html { render :edit }
        format.json { render json: @field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @field.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @field = Field.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:field).permit(:first_name, :last_name)
    end
end
