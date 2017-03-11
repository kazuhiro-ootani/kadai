class AddNotNulltoTasks < ActiveRecord::Migration[5.0]
  def change
    change_column_null :tasks, :title,      false
    change_column_null :tasks, :content,    false
    change_column_null :tasks, :finished,   false
    change_column_null :tasks, :priority,   false
  end
end
