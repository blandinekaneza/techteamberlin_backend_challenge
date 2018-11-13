class MissionsController < ApplicationController
  
  # list all missions
  # GET /missions
  def index
    @mission = HTTParty.get('https://api.spacexdata.com/v3/missions',
    :headers =>{'Content-Type' => 'application/json'} )
  end

  def show
    pid = params[:id]
    puts "**** PID: #{pid}"
    set_mission(pid)
  end

  def search
    @missions = Mission.search(params[:term])
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    # show mission with this id
    # GET /missions/:id    
    def set_mission pid
      url = 'https://api.spacexdata.com/v3/missions/' + pid
      encoded_url = URI.encode(url)

      @mission = HTTParty.get(encoded_url,
      :headers =>{'Content-Type' => 'application/json'} ) 
    end

    def self.search(term)
      if term
        where("description LIKE ?", "%#{term}%")
      else
        all
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mission_params
      params.require(:mission).permit(:mission_name, :mission_id, :wikipedia, :website, :twitter, :description, :term)
    end
  end