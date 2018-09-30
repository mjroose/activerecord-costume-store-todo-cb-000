class FixCostumeStores < ActiveRecord::Migration[5.1]
  def change
    change_table :costume_stores do |t|
      t.rename :employees_count, :num_of_employees
      t.rename :in_business, :still_in_business
    end

    change_column :costume_stores, :opening_time, :datetime
    change_column :costume_stores, :closing_time, :datetime
  end
end
