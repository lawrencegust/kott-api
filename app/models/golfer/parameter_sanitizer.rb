class Golfer::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [:email,  :zipcode, :username, :handicap])
  end
end
