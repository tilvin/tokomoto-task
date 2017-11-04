class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices, id: :uuid do |t|
      t.string :name

      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
