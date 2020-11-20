class CreateIncomeMoneys < ActiveRecord::Migration[5.2]
  def change
    create_table :income_moneys do |t|

      t.timestamps
    end
  end
end
