class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  layout 'application'

  rescue_from Exception, with: lambda{|exp|
    render_result(exp.message)
  }

  #def reigai(exception = nil)
  #
  #end

  def try_code
    result = eval(params[:code])
    render_result(result)
  end

  def render_result(object)
    hash = {result: object}
    render json: JSON.pretty_generate(JSON.parse(hash.to_json))
  end

end
