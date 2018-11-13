class PayloadsController < ApplicationController

  # list all payloads
  # GET /payloads
  def index
    @payloads = HTTParty.get('https://api.spacexdata.com/v3/payloads',
    :headers =>{'Content-Type' => 'application/json'} )
  end

  def show
    pid = params[:id]
    puts "**** PID: #{pid}"
    set_payload(pid)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # show payload with this id
    # GET /payloads/:id
    def set_payload pid
      url = 'https://api.spacexdata.com/v3/payloads/' + pid
      encoded_url = URI.encode(url)

      @payload = HTTParty.get(encoded_url,
    :headers =>{'Content-Type' => 'application/json'} )
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payload_params
      params.require(:payload).permit(:payload_id, :reused, :manufacturer, :payload_type, :payload_mass_kg, :payload_mass_lbs, :orbit)
    end
end