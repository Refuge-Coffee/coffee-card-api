class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.belongs_to :card
      t.string :action
      t.integer :amount_cents
      t.string :description
      t.timestamps
    end
  end
end
