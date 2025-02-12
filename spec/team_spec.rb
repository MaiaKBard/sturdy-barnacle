require './lib/player'
require './lib/team'

RSpec.describe Team do 

    it 'exsists' do 
        team = Team.new("Dodgers", "Los Angeles")
        player = Player.new("Michael Palledorous" , 1000000, 36)

        expect(team).to be_a(Team)
    end 

    it 'has a roster' do
        team = Team.new("Dodgers", "Los Angeles")
        player = Player.new("Michael Palledorous" , 1000000, 36)

        expect(team.roster).to eq([])
    end

    it 'has a player count' do
        team = Team.new("Dodgers", "Los Angeles")
        player = Player.new("Michael Palledorous" , 1000000, 36)

        expect(team.player_count).to eq(0)
    end

    it 'can add players' do
        team = Team.new("Dodgers", "Los Angeles")
        player = Player.new("Michael Palledorous" , 1000000, 36)

        team.add_player(player)

        expect(team.roster).to eq([player])
    end

    it 'can have multiple players on roster' do
        team = Team.new("Dodgers", "Los Angeles")
        player = Player.new("Michael Palledorous" , 1000000, 36)

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.roster).to eq([player_1, player_2])
    end


end 