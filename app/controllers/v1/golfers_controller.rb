module V1
  class GolfersController < ApiController
    before_action :authenticate_golfer!

    def show
      @golfer = Golfer.friendly.find(params[:id])
      render json: @golfer
    end

    def index
      if params[:nearby]
        @golfers = Golfer.near(params[:nearby])
      else
        @golfers = Golfer.all
      end

      render json: @golfers
    end

    private
    def golfer_params
      params.require(:golfer).permit(
        :email,
        :password,
        :handicap,
        :username,
        :password_confirmation,
        :zipcode,
        :uid
      )
    end
  end
end
