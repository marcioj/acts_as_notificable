class Notification < ActiveRecord::Base
  belongs_to :owner, polymorphic: true

  validates :template_name, presence: true

  serialize :locals, Hash

  def render(options = {})
    locals.merge!(notification: self)
    render_options = { file: "notifications/#{template_name}", locals: locals }
    render_options[:layout] = "layouts/" + options[:layout] if options.has_key?(:layout)
    view.render(render_options)
  end

  def self.create_notification(template_name, locals = {})
    Notification.create(template_name: template_name, locals: locals)
  end

  private
    def view
      view_paths = ActionController::Base.view_paths
      @_view ||= Class.new(ActionView::Base) do
        include Rails.application.routes.url_helpers
      end.new(view_paths, {})
    end
end
