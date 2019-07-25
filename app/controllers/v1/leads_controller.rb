module V1
  class LeadsController < ApiController

    def create
      @lead = Lead.new(lead_params)

      if @lead.save
        slack = Slack::Web::Client.new
        slack.chat_postMessage(channel: '#leads', text: "NEW LEAD: #{@lead.email} just signed up as a lead in zipcode #{@lead.zipcode}")
        render json: @lead, status: :ok
      else

      end
    end

    def lead_params
      params.require(:lead).permit(
        :email,
        :zipcode
      )
    end
  end
end
