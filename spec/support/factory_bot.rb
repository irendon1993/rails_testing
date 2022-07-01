# spec/support/factory_bot.rb

# RSpec.configure do |config|
#   config.include FactoryBot::Syntax::Methods
# end

require 'factory_bot'

RSpec.configure do |config|
    config.include FactoryBot::Syntax::Methods
    FactoryBot.find_definitions
end