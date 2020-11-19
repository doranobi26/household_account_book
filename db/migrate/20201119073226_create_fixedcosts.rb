class CreateFixedcosts < ActiveRecord::Migration[5.2]
  def change
    create_table :fixedcosts do |t|
      t.string :subject, null: false
      t.string :remark

      t.timestamps
    end
  end
end
