require "spec_helper"

RSpec.describe User, type: :model do
  describe "associations" do
    it { should have_many(:notifications) }
  end
end
