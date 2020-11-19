class RemoveListingsRefFromTransaction < ActiveRecord::Migration[6.0]
  def change
    remove_reference :transactions, :listings, null: false, foreign_key: true
  end
end
