require "mongoid_blog_demo_domain_model/version"

# module MongoidBlogDemoDomainModel
#   # Your code goes here...
# end

require "mongoid"
require "mongoid/sadstory"

require "waterdrop"
require "models/article"
require "models/author"
require "models/comment"
require "managers/application_manager"
require "managers/author_manager"

module MongoIdBlogDemoDomainModel
  def self.initialize
    # load configuratrion from "kafka.yml" file "waterdrop"" configuration section
    if defined?(Rails)
      path = "#{Rails.root}/config/kafka.yml"
      kafka_config = YAML.load(ERB.new(File.new(path).read).result)[ENV['RAILS_ENV']]['waterdrop']

      WaterDrop.setup do |config|
        config.send_messages = kafka_config['send_messages']
        config.connection_pool_size = kafka_config['connection_pool_size']
        config.connection_pool_timeout = kafka_config['connection_pool_timeout']
        config.kafka_hosts = ['localhost:9092']
        config.raise_on_failure = true
      end
    end
  end
end

