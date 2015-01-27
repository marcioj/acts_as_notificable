require "spec_helper"
require "generators/acts_as_notificable/templates/notification"

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

  describe ".create_notification" do
    subject do
      Notification.create_notification(:welcome)
    end

    it { expect(subject.template_name).to eq(:welcome)}
    it { expect(subject).to be_persisted }
  end

  describe "#render" do
    context "with simple template rendering" do
      subject do
        Notification.create_notification(:welcome)
      end

      it { expect(subject.render).to include("Welcome to my world") }
    end

    context "with locals" do
      subject do
        Notification.create_notification(:hello, name: "dude")
      end

      it { expect(subject.render).to include("<h1>Hello dude</h1>") }
      it { expect(subject.render).to include("<h3>The notification id is #{subject.id}</h3>") }
    end

    context "with layout" do
      subject do
        Notification.create_notification(:hello, name: "guys")
      end

      it { expect(subject.render(layout: "my_notifications")).to include("<h1>Using layout</h1><h1>Hello guys</h1>") }
    end
  end

end
