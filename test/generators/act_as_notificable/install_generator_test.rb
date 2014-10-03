require "test_helper"
require "fileutils"
require "rails/generators"
require "generators/act_as_notificable/install_generator"

class InstallGeneratorTest < ::Rails::Generators::TestCase
  tests ActAsNotificable::Generators::InstallGenerator
  destination temp_path

  test "model is copied" do
    run_generator

    assert_file "app/models/notification.rb"
  end

  teardown do
    FileUtils.rm_rf temp_path
  end
end
