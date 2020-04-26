class Metatag
  attr_accessor :title,
                :description,
                :keywords,
                :og_site_name,
                :og_url,
                :og_title,
                :og_description,
                :og_image,
                :og_twitter_card,
                :og_twitter_title,
                :og_twitter_description
  def initialize(attrs)
    @title = attrs[:title]
    @description = attrs[:description]
    @keywords = attrs[:keywords]
    @og_site_name = attrs[:og_site_name]
    @og_url = attrs[:og_url]
    @og_title = attrs[:og_title]
    @og_description = attrs[:og_description]
    @og_image = attrs[:og_image]
    @og_twitter_card = attrs[:og_twitter_card]
    @og_twitter_title = attrs[:og_twitter_title]
    @og_twitter_description = attrs[:og_twitter_description]
  end

end
