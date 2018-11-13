class NationalitiesController < ApplicationController

  # list all nationalities
  # GET /nationalities
  def index
    @payloads = HTTParty.get('https://api.spacexdata.com/v3/payloads',
    :headers =>{'Content-Type' => 'application/json'} )
  end

  # show payloads with this nationality
  # GET /nationalities/:id/payloads
  def payloads
  end
  
  # show missions with this nationality
  # GET /nationalities/:id/missions
  def missions
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nationality
      @nationalities = Nationalities.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nationality_params
      params.require(:nationality).permit(:name)
    end
end