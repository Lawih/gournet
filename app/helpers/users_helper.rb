module UsersHelper
    # Returns a dynamic path based on the provided parameters
    def sti_user_path(type = "user", user = nil, action = nil)
      send "#{format_sti(action, type, user)}_path", user
    end

    def format_sti(action, type, user)
      action || user ? "#{format_action(action)}#{type.underscore}" : "#{type.underscore.pluralize}"
    end

    def format_action(action)
      action ? "#{action}_" : ""
    end

end
