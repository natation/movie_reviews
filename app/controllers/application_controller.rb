class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def render_info(message, now = true)
    if now
      flash.now[:info] = message
    else
      flash[:info] = message
    end
  end

  def render_errors(obj, now = true)
    if now
      flash.now[:errors] = obj.errors.full_messages if obj
    else
      flash[:errors] = obj.errors.full_messages if obj
    end
  end
end
