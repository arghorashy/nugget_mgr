class CreateNuggets < ActiveRecord::Migration
  def change
    create_table :nuggets do |t|
    	t.string :name
    	t.text :tags
    	t.text :attachments
    	t.integer :uid
    	t.boolean :markForReview

      	t.timestamps
    end
  end
end
