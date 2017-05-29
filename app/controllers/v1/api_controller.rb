module V1
  class ApiController < ApplicationController
    include DeviseTokenAuth::Concerns::SetUserByToken
  end
end
