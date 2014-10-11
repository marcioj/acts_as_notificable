require "generators/act_as_notificable/templates/migration"

ActiveRecord::Migration.verbose = false
ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"
ActiveRecord::Migrator.new(:up, [CreateNotificationsTable.new]).migrate

load(File.expand_path(File.join('..', '..', 'dummy', 'db', 'schema.rb'), __FILE__))
