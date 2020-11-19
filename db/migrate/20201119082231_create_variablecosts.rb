class CreateVariablecosts < ActiveRecord::Migration[5.2]
  def change
    create_table :variablecosts do |t|
      t.string :subject, null: false
      t.string :remark

      t.timestamps
    end
  end
end
