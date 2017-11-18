class AddColumnProducts < ActiveRecord::Migration[5.1]
  def change
    add_column(:products, :grape, :string)
  end
end
