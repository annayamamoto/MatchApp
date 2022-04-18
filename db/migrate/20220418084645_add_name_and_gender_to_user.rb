class AddNameAndGenderToUser < ActiveRecord::Migration[6.0]
  def change
    # ==========ここから編集する==========
    add_column :users, :name, :string, null: false
    add_column :users, :gender, :integer, null: false, default: 0
    # ==========ここまで編集する==========
  end
end
