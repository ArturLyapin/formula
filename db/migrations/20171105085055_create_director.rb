# frozen_string_literal: true

Hanami::Model.migration do
  change do
    create_table :directors do
      primary_key :id

      foreign_key :team_id, :teams, on_delete: :cascade, null: false

      column :firstname, String, null: false
      column :lastname, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
