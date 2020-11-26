class CreateSignuptokens < ActiveRecord::Migration[5.2]
  def change
    create_table :signuptokens do |t|
      t.string :token_text, null: false
    end
  end
end
