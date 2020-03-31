class CreatePatterns < ActiveRecord::Migration[5.2]
  def change
    create_table :patterns do |t|
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
