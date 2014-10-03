require "spec_helper"
require "generators/act_as_notificable/install_generator"

RSpec.describe ActAsNotificable::Generators::InstallGenerator, type: :generator do
  destination temp_path

  before { prepare_destination }

  it "copy the model template" do
    run_generator
    expect(file("app/models/notification.rb")).to exist
  end
end
