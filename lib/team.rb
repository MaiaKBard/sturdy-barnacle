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

    def long_term_players
       @roster.select do |player|
        player.contract_length / 12 > 2
       end
    end

    def short_term_players
        @roster.select do |player|
         player.contract_length / 12 <= 2
        end
     end

     def total_value
       @roster.map(&:total_cost).sum
     end

end 