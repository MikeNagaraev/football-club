class Tournament < ApplicationRecord
  def self.search(params)
    if params
      @found_tournaments = ActiveRecord::Base.connection.execute("SELECT * from tournaments where tournaments.tournament_name like '#{params['tournament_name']}%'")
      @found_tournaments ? @found_tournaments : nil
    else
      nil
    end
  end

  def self.create_tournament(params)
    if params
      @tournament = ActiveRecord::Base.connection.execute("INSERT INTO 'tournaments' ('tournament_name', 'created_at', 'updated_at') VALUES('#{params['tournament_name']}', '#{Time.now}', '#{Time.now}')")
    else
      nil
    end
  end

end
