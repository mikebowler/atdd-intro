require 'database_cleaner'

ActiveRecord::Base.establish_connection(
            :adapter => 'sqlite3',
            :database => 'artifacts/development.sqlite3')

DatabaseCleaner.strategy = :truncation, {
    :except => %w[puppies users]
}

Before do
  DatabaseCleaner.start
end

After do
  DatabaseCleaner.clean
end

