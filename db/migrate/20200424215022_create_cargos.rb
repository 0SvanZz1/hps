class CreateCargos < ActiveRecord::Migration[5.1]
  def change
    create_table :cargos do |t|
      t.string :desc_cargo

      t.timestamps
    end
  end
end
