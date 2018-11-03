class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def show
   @transaction = Transaction.find(params[:id])
  end

  def new
    tenants = Tenant.all
    @tenants =  tenants.map{|t| [t.full_name, t.id] }
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def search
    @tenant = Tenant.where(id: params[:search]).first
    if @tenant.present?
      @transaction = @tenant.transactions.last
    end
  end

end
