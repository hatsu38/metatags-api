module Api
  module V1
    class ScrapesController < ApplicationController
      def show
        return nil if params[:url].nil?

        agent = Mechanize.new
        page = agent.get(params[:url])
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

        @metatag = Metatag.new(
          title: title,
          description: description,
          keywords: keywords,
          og_site_name: og_site_name,
          og_url: og_url,
          og_title: og_title,
          og_description: og_description,
          og_image: og_image,
          og_twitter_card: og_twitter_card,
          og_twitter_title: og_twitter_title,
          og_twitter_description: og_twitter_description
        )
      end
    end
  end
end