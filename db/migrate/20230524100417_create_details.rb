class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
