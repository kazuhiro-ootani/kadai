class AddDefaulttoTasks < ActiveRecord::Migration[5.0]
  def change
    change_column_default :tasks, :finished, false
  end
end
