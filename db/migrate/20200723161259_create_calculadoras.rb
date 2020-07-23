class CreateCalculadoras < ActiveRecord::Migration[6.0]
  def change
    create_table :calculadoras do |t|
      t.integer :num1
      t.integer :num2

      t.timestamps
    end
  end
end
