require 'spec_helper'

module Stattleship
  module Params
    RSpec.describe BasketballGamesParams do
      describe '#query' do
        it 'defines a query hash of all parameters' do
          params = BasketballGamesParams.new

          params.player_id = 'nba-lebron-james'
          params.team_id = 'nba-cle'

          query_parameters = params.query['query']

          expect(query_parameters.size).to eq 2
          expect(query_parameters['player_id']).to eq 'nba-lebron-james'
          expect(query_parameters['team_id']).to eq 'nba-cle'
        end

        it 'constructs only the given player parameter' do
          params = BasketballGamesParams.new

          params.player_id = 'nba-lebron-james'

          query_parameters = params.query['query']

          expect(query_parameters.size).to eq 1
          expect(query_parameters['player_id']).to eq 'nba-lebron-james'
        end

        it 'constructs only the given team parameter' do
          params = BasketballGamesParams.new

          params.team_id = 'nba-cle'

          query_parameters = params.query['query']

          expect(query_parameters.size).to eq 1
          expect(query_parameters['team_id']).to eq 'nba-cle'
        end

        it 'fails validation if the sport does not match' do
          params = BasketballGamesParams.new

          params.team_id = 'nfl-ne'

          expect { params.query }.to raise_error ArgumentError
        end
      end
    end
  end
end
