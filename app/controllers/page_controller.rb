class PageController < ApplicationController
  layout false
  rescue_from Exception, :with => :reigai
  def reigai(exception = nil)
    render_result(exception.message)
  end

  def try_code
    result = eval(params[:code])
    render_result(result)
  end

  def render_result(object)
    hash = {result: object}
    render json: JSON.pretty_generate(JSON.parse(hash.to_json))
  end
end