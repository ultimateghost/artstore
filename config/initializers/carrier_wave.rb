CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage :fog
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV['AWSAccessKeyId'],      # 你的 key

      aws_secret_access_key: ENV['AWSSecretKey'],      # 你的 secret key

      region:                ENV['RegionName'] # 你的 S3 bucket 的 Region 位置

    }
    config.fog_directory  = ENV['BucketName'] # 你設定的 bucket name

  else
    config.storage :file
  end
end
