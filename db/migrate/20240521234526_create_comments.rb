# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
