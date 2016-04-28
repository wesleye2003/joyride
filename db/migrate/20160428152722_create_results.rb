class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.float    :years, null: false
      t.float    :months, null: false
      t.float    :days, null: false
      t.float    :hours, null: false
      t.float    :minutes, null: false
      t.float    :seconds, null: false
    end
  end
end
