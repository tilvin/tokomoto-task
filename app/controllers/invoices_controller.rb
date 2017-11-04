class InvoicesController < ApplicationController

  def index
    @invoices = Invoice.order("(substring(name, '[0-9]+$'))::int DESC")
  end

end