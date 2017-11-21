class TournamentController < ApplicationController
  def new
    @tournament = Tournament.new
  end

  def index
    @tournaments = Tournament.all
    if params[:tournament_name]
      @search = {
        'tournament_name' => params[:tournament_name]
      }
    end
    @found_tournaments = Tournament.search(@search)
  end

  def create
    @tournament = Tournament.create_tournament(tournment_params)
    redirect_to tournaments_path
  end

  def show
  end

  def tournment_params
    params.require(:tournament).permit(:tournament_name)
  end
end
