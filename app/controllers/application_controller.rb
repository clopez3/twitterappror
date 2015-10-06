class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	# Este es el index de la aplicación web, TWITTER.
  end

  def data0
    @correo = params[:correo]
    @clave = params[:clave]
    render "datos"
  end

  def data
    puts "******************************"
    puts params[:nombre]
    puts params[:correo]
    puts params[:clave]
    redirect_to "/"
  end

end
