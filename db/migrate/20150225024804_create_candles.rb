class CreateCandles < ActiveRecord::Migration
  def change
    create_table :candles do |t|
      t.string :color
      t.string :scent
      t.integer :cost

      t.timestamps null: false
    end
  end
end
