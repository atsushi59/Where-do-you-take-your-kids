# frozen_string_literal: true

class CreatePlaceHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :place_histories do |t|
      t.references :user, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
