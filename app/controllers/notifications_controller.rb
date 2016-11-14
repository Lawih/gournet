class NotificationsController < ApplicationController
  before_action :authenticate_user!

  # GET /notifications
  # GET /notifications.json
  def index
    @notifications = Notification.where(recipient: current_user).unread
  end

  def show

  end

  def mark_as_read
    @notifications = Notification.where(recipient: current_user).unread
    @notifications.update_all(read_at: Time.zone.now)
    render json: {success: true}
  end

end