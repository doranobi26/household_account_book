class CreateIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.string :subject, null: false
      t.string :remark

      t.timestamps
    end
  end
end
