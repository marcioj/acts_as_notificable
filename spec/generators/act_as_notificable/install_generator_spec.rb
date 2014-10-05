require "spec_helper"
require "generators/act_as_notificable/install_generator"

RSpec.describe ActAsNotificable::Generators::InstallGenerator, type: :generator do
  destination temp_path

  before { run_generator }

  it "copy the model template" do
    expect(file("app/models/notification.rb")).to exist
  end

  it "generates a migration" do
    expect(file("db/migrate/create_notifications_table.rb")).to be_a_migration
  end
end
