require "rails/generators/active_record/migration"

module ActsAsNotificable
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include ActiveRecord::Generators::Migration
      source_root File.expand_path("../templates", __FILE__)

      def copy_notification_model
        copy_file "notification.rb", "app/models/notification.rb"
      end

      def copy_notification_migration
        migration_template "migration.rb", "db/migrate/create_notifications_table.rb"
      end
    end
  end
end
