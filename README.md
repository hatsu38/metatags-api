# Metatag Scraper API


## Summary

#### Japanese
このAPIパラメータにURLを送信すると、Metaタグを解析してjsonを返します。
もしバグを見つけたら、ISSUEを作成してください。

APIは時間をかけて改善していきたいと考えています。
変更は常に下位互換性があるとは限らないので、バージョニングを使うつもりです。
この最初のイテレーションでは、URI の前に https://metatags-api.herokuapp.com/api/v1/scrape を付け、以下に説明するような構造になっています。

#### English
When you send a URL to this API parameter, it parses the Meta tag and returns a json.
If you find a bug, please create an ISSUE.

We hope to improve the API over time.
The changes won't always be backward compatible, so we're going to use versioning.
This first iteration will have URIs prefixed with https://metatags-api.herokuapp.com/api/v1/scrape and is structured as described below.

## Item
```
➤ curl 'https://metatags-api.herokuapp.com/api/v1/scrape?url=https://stackoverflow.com/' | jq;
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   837    0   837    0     0    807      0 --:--:--  0:00:01 --:--:--   807
{
  "metatags": {
    "title": "Stack Overflow - Where Developers Learn, Share, & Build Careers",
    "description": "Stack Overflow is the largest, most trusted online community for developers to learn, share​ ​their programming ​knowledge, and build their careers.",
    "keywords": null,
    "og_site_name": "Stack Overflow",
    "og_url": "https://stackoverflow.com/",
    "og_title": "Stack Overflow - Where Developers Learn, Share, & Build Careers",
    "og_description": "Stack Overflow | The World’s Largest Online Community for Developers",
    "og_image": "https://cdn.sstatic.net/Sites/stackoverflow/img/apple-touch-icon@2.png?v=73d79a89bded",
    "og_twitter_card": "summary",
    "og_twitter_title": "Stack Overflow - Where Developers Learn, Share, & Build Careers",
    "og_twitter_description": "Stack Overflow | The World’s Largest Online Community for Developers"
  }
}
```


### デプロイ方法
```
# herokuにログイン
$ heroku login

# herokuにデプロイ
$ heroku push origin master
```
