
Carrierwave.configure do |config|
  config.storage = :aws
  config.aws_bucket = ENV.fetch('S3_BUCKET_NAME')
  config.aws_acl = 'public-read'

  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7

  # Setting custom options such as cache control to leverage browser caching
  config.aws_attributes = {
    expires: 1.week.from_now.httpdate,
    cache_control: 'max-age=604800'
  }

  config.aws_credentials = {
    access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'
  }



  config.fog_credentials = {
    provider: 'AWS'
    aws_access_key_id: ENV['AWS_SECRET_ACCESS_KEY']
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
    region: 'us-west-2'
  }

end

module Carrierwave
  module MiniMagick
    def quality(percentage)
      manipulate! do |img|
        img.quality(percentage.to_s)
        img = yield(img) if block_given?
        img
      end
    end
  end
