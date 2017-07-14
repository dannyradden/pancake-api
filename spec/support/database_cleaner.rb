RSpec.configure do |config|
  config.before(:suite) do
    begin
      DatabaseCleaner.start
    ensure
      DatabaseCleaner.clean_with(:truncation)
    end
  end

  config.before(:each) do
    DatabaseCleaner.clean_with(:truncation)

  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
