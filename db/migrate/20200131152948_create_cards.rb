class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :full_number
      t.integer :balance_cents
      t.timestamps
    end
  end
end
