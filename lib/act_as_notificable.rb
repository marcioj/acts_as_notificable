module ActAsNotificable
  extend ActiveSupport::Concern

  module ClassMethods
    def act_as_notificable
      has_many :notifications, inverse_of: :owner, dependent: :destroy
    end
  end
end

ActiveRecord::Base.send :include, ActAsNotificable
