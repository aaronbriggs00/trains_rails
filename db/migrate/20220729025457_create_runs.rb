class CreateRuns < ActiveRecord::Migration[7.0]
  def change
    create_table :runs do |t|
      t.string :line
      t.string :route
      t.string :run_number
      t.string :operator_id

      t.timestamps
    end
  end
end
