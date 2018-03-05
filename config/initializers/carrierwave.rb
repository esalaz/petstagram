Carrierwave.configure do |config|
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
end
