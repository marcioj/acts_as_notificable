require "spec_helper"

RSpec.describe User, type: :model do
  describe "associations" do
    it { should have_many(:notifications) }
  end

  # TODO reset database after each run
  # it { expect(Notification.count).to eq(0) }
end
