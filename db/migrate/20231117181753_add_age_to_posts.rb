class AddAgeToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :age, :integer
  end
end
