class Team 
    attr_reader :team_name, :state, :roster

    def initialize(team_name, state)
        @team_name = team_name
        @state = state
        @roster = []
    end

    def player_count
        @roster.count
    end

    def add_player(player)
        @roster << player
    end

    def roster
        @roster
    end
end 