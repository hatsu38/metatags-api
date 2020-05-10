class CreateMetatags < ActiveRecord::Migration[6.0]
  def change
    create_table :metatags, comment: 'Metatag' do |t|
      t.string :url, comment: 'URL'
      t.string :title, comment: 'タイトル'
      t.string :description, comment: 'Description'
      t.string :keyword, comment: 'Keyword'
      t.string :og_site_name, comment: 'OGPのサイトName'
      t.string :og_url, comment: 'OGPのURL'
      t.string :og_title, comment: 'OGPのタイトル'
      t.string :og_description, comment: 'OGPのDescription'
      t.string :og_image, comment: 'OGPの画像'
      t.string :og_twitter_card, comment: 'TwitterのOGPカードの種類'
      t.string :og_twitter_title, comment: 'TwitterのOGPカードのタイトル'
      t.string :og_twitter_description, comment: 'TwitterのOGPカードのDescription'
      t.string :domain, comment: 'ドメイン'
    end
  end
end
