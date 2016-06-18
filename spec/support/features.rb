Dir[Rails.root.join("spec/support/features/*.rb")].each { |f| require f }
RSpec.configure  do |config|
  config.include Features::SessionHelpers, type: :controller
end

RSpec.configure  do |config|
  config.include Features::SessionHelpers, type: :feature
end
