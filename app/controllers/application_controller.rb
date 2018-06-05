class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def authenticate_admin
    unless current_user.admin?
      flash[:alert] = "Not allow!"
      redirect_to root_path
    end
  end

  def current_cart
    @cart || set_cart
  end

  def set_cart
    if session[:cart_id]
      @cart = Cart.find_by(id: session[:cart_id])
    end

    @cart ||= Cart.create
    session[:cart_id] = @cart.id

    @cart
  end

end
