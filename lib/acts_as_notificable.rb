module ActsAsNotificable
  extend ActiveSupport::Concern

  module ClassMethods
    def acts_as_notificable
      has_many :notifications, inverse_of: :owner, dependent: :destroy
    end
  end
end

ActiveRecord::Base.send :include, ActsAsNotificable
