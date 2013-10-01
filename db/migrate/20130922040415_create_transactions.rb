class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :task_id
      t.integer :rank
      t.date :accomplish_date
      t.integer :weather

      t.timestamps
    end
  end
end
