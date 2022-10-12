class CreateProjectContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :project_contracts do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
