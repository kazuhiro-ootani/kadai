class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :account
      t.string     :title
      t.text       :content
      t.boolean    :finished
      t.integer    :priority

      t.timestamps
    end
  end
end
