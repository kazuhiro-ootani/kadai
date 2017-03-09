class SorceryCore < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :login,           null: false, limit: 40
      t.string :password_digest, null: false

      t.timestamps null: false
    end
    add_index :accounts, :login, unique: true
  end
end
