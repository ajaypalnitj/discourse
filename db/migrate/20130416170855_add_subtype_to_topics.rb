class AddSubtypeToTopics < ActiveRecord::Migration
  def up
    add_column :topics, :subtype, :string
    execute "update topics set subtype = 'user_to_user' where archetype = 'private_message'"
  end

  def down
    remove_column :topics, :subtype
  end
end
