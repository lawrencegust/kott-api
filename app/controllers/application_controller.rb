class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session, :if => Proc.new { |c| c.request.format == 'application/json' }
  include DeviseTokenAuth::Concerns::SetUserByToken

  def devise_parameter_sanitizer
    if resource_class == Golfer
      Golfer::ParameterSanitizer.new(Golfer, :golfer, params)
    end
  end
end
