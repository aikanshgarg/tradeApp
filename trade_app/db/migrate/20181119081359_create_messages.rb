class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|

    	t.text :body
    	t.references :conversation, index: true
    	t.references :user, index: true

		# this could be added later to mark a message as read
    	# t.boolean :read, default: false

    	t.timestamps
    end
  end
end
