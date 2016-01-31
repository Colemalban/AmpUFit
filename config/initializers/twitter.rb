
$twitter = Twitter::REST::Client.new do |config|
  config.consumer_key = "IOtcHru6wsapQgnKoQuMaoobX"#ENV['CONSUMER_KEY']
  config.consumer_secret = "8rKw9XXZQAdzI8FEun3QJmpDTyiVWJthml992OpzQENKDv8FZY"# ENV['CONSUMER_SECRET']
  config.access_token = ENV['YOUR_ACCESS_TOKEN']
  config.access_token_secret = ENV['YOUR_ACCESS_SECRET']
end
