class AddOptionToContributions < ActiveRecord::Migration[5.1]
  def change
    add_column :contributions, :option_id, :integer
  end
end
