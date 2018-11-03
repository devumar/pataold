class ReceiptsController < ApplicationController
  before_action :set_receipt, only: [:show, :edit, :update, :destroy]

  # GET /receipts
  # GET /receipts.json
  def index
    @receipts = Receipt.all
  end

  def import
    Receipt.import(params[:file])
    begin
      # Retreive the extension of the file
      file_ext = File.extname(file.original_filename)
      raise "Unknown file type: #{file.original_filename}" unless [".xls", ".xlsx"].include?(file_ext)
      spreadsheet = (file_ext == ".xls") ? Roo::Excel.new(file.path) : Roo::Excelx.new(file.path)
      header = spreadsheet.row(1)
      (2..spreadsheet.last_row).each do |i|
        Receipt.create(id: spreadsheet.row(i)[0], month: spreadsheet.row(i)[1],unit_name: spreadsheet.row(i)[2],property_id: spreadsheet.row(i)[3],receipt_no: spreadsheet.row(i)[4],mode: spreadsheet.row(i)[5])
      end
      flash[:notice] = "Records Imported"
      redirect_to receipts_path
    rescue Exception => e
      flash[:notice] = "Issues with file"
      redirect_to receipts_path
    end
  end


  def download_xl
    @receipts = Receipt.all.to_xls(:only => [:id, :month, :unit_name, :property_id, :receipt_no, :mode], :header_columns => ['id', 'month','unit_name','property_id','receipt_no','mode'], :column_width=> [30, 30])
    respond_to do |format|
      format.html
      format.xls {
        send_data @receipts, :filename => 'receipts.xls'
        return # prevet Rails to seek for index.xls.erb
      }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @receipt = Receipt.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @receipt = Receipt.new(receipt_params)

    respond_to do |format|
      if @receipt.save
        format.html { redirect_to @receipt, notice: 'entries  successfully created.' }
        format.json { render :show, status: :created, location: @receipt }
      else
        format.html { render :new }
        format.json { render json: @receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @receipt.update(receipt_params)
        format.html { redirect_to @receipt, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @receipt }
      else
        format.html { render :edit }
        format.json { render json: @receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @receipt.destroy
    respond_to do |format|
      format.html { redirect_to receipt_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @receipt = Receipt.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def receipt_params


    params.require(:receipt,{}).
        permit(
            :id,
            :month,
            :unit_name,
            :property_id,
            :receipt_no,
            :mode
        )
  end
end
