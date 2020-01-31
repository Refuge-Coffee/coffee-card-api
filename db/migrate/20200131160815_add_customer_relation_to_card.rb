class AddCustomerRelationToCard < ActiveRecord::Migration[6.0]
  def change
    add_reference :cards, :customer, index: true
  end
end
