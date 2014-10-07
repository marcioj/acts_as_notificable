class Notification < ActiveRecord::Base
  belongs_to :owner, polymorphic: true

  validates :template_name, presence: true

  serialize :locals, Hash
end
