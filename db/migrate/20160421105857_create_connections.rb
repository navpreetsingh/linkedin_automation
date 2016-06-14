class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.string :IM
      t.string :address
      t.string :twitter
      t.string :WeChat
      t.text :websites, array: true, default: []
      t.string :linkedin_link
      t.string :company
      t.string :job_title
      t.string :pic_url
      t.string :location


      t.timestamps null: false
    end
  end
end
