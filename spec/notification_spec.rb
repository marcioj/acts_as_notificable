require "spec_helper"
require "generators/act_as_notificable/templates/notification"

RSpec.describe Notification, type: :model do
  describe "validations" do
    it { should validate_presence_of(:template_name) }
  end

  describe "serializers" do
    it { should serialize(:locals) }
  end

  describe "associations" do
    it { should belong_to(:owner) }
  end
end
