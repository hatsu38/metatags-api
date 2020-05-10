namespace :metatag_scrape do
  desc 'ServiceSafariからスクレイピングする'
  task service_safari_scrape: :environment do
    URL = 'https://www.service-safari.com/'
    agent = Mechanize.new
    page=agent.get(URL)
    page.search('a.name').each do |a|
      begin
        detail_page=agent.get("#{URL}#{a[:href]}")
        site_url_a = detail_page.at('#PostInfo p a')
        next unless site_url_a
        get_metatags(site_url_a[:href], agent)
      rescue Mechanize::ResponseCodeError => e
        Rails.logger.error("====サービス詳細ページのスクレイピングに失敗====")
        Rails.logger.error(e.message)
        Rails.logger.error(e.response_code)
        Rails.logger.error(detail_page)
      end
    end
  end
end

def get_metatags(url, agent)
  page = agent.get(url)
  title = page.search('title').text
  description = page.at('meta[name="description"]')[:content] if page.at('meta[name="description"]')
  keywords = page.at('meta[name="keywords"]')[:content] if page.at('meta[name="keywords"]')
  og_site_name = page.at('meta[property="og:site_name"]')[:content] if page.at('meta[property="og:site_name"]')
  og_url = page.at('meta[property="og:url"]')[:content] if page.at('meta[property="og:url"]')
  og_title = page.at('meta[property="og:title"]')[:content] if page.at('meta[property="og:title"]')
  og_description = page.at('meta[property="og:description"]')[:content] if page.at('meta[property="og:description"]')
  og_image = page.at('meta[property="og:image"]')[:content] if page.at('meta[property="og:image"]')
  og_twitter_card = page.at('meta[name="twitter:card"]')[:content] if page.at('meta[name="twitter:card"]')
  og_twitter_title = page.at('meta[name="twitter:title"]')[:content] if page.at('meta[name="twitter:title"]')
  og_twitter_description = page.at('meta[name="twitter:description"]')[:content] if page.at('meta[name="twitter:description"]')
  domain = URI.parse(url).host
  begin
    Metatag.create!(
      url: url,
      title: title,
      description: description,
      keyword: keywords,
      og_site_name: og_site_name,
      og_url: og_url,
      og_title: og_title,
      og_description: og_description,
      og_image: og_image,
      og_twitter_card: og_twitter_card,
      og_twitter_title: og_twitter_title,
      og_twitter_description: og_twitter_description,
      domain: domain
    )
  rescue => e
    Rails.logger.error("====登録の失敗====")
    Rails.logger.error(e)
    Rails.logger.error(domain)
    Rails.logger.error(url)
  end
end