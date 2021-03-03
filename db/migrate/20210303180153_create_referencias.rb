class CreateReferencias < ActiveRecord::Migration[5.2]
  def change
    create_table :referencias do |t|
      t.string :referencia

      t.timestamps
    end
  end
end
