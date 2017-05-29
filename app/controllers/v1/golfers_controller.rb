module V1
  class GolfersController < ApiController
    def show
      @golfer = Golfer.friendly.find(params[:id])
      render json: @golfer
    end

    def index
      @golfers = Golfer.all
      render json: @golfers
    end

    private
    def golfer_params
      params.require(:golfer).permit(:email, :password, :password_confirmation, :zipcode, :uid)
    end
  end
end
