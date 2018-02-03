class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.string :category

      t.timestamps
    end
  end
end
