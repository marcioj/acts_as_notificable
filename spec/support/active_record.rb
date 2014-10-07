require "generators/act_as_notificable/templates/migration"

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"
ActiveRecord::Migrator.new(:up, [CreateNotificationsTable.new]).migrate
