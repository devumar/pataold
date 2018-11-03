class ConfirmsController < ApplicationController
    
  def index
    client.c2b_transaction(shortcode, amount, msisdn, bill_reference)
  end
end
