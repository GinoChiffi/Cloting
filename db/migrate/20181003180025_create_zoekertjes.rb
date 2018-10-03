class CreateZoekertjes < ActiveRecord::Migration[5.0]
  def change
    create_table :zoekertjes do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
