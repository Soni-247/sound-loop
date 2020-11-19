class AddListingRefToTransaction < ActiveRecord::Migration[6.0]
  def change
    add_reference :transactions, :listing, null: false, foreign_key: true
  end
end
