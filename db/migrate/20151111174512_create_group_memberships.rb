class CreateGroupMemberships < ActiveRecord::Migration
  def change
    create_table :group_memberships do |t|
      t.references :group, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.boolean :active

      t.timestamps null: false
    end
  end
end
