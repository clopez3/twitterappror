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

  def calculadora
    render "calculadora"
  end

  def calculo
    valor0 = params[:valor0][0].to_i
    valor1 = params[:valor1][0].to_i
    operador = params[:operador].to_i
    if operador == 1
      @total = valor0 + valor1
    elsif operador == 2
      @total = valor0 - valor1
    elsif operador == 3
      @total = valor0 * valor1
    elsif operador == 4
      @total = valor0 / valor1
    end
    render "calculadora"    
  end
    
end