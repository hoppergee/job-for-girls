CarrierWave.configure do |config|
  if Rails.env.production? or Rails.env.development?
    config.storage :fog
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV["AKIAIVOKTPCR57DPOUKA"],
      aws_secret_access_key: ENV["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"],
      region: 'ap-northeast-1'
      
    }
    
    config.fog_directory = ENV["wokenfullstack"]
    
  else
    config.storage :file
  end
end