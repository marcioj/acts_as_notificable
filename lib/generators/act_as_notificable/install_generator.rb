module ActAsNotificable
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def copy_notification_model
        copy_file "notification.rb", "app/models/notification.rb"
      end
    end
  end
end
