require 'game'
  describe Game do

    let(:game) { Game.new }

    it 'should allow the computer to generate a random 4 digit number' do
      allow(game).to receive(:comp_choice).and_return 5678
      expect(game.comp_choice).to eq(5678)
    end

    it 'should allow the player to chose and score no cows' do
      allow(game).to receive(:comp_choice).and_return 5678
      game.player_choice(1234)
      expect(game.cows).to eq(0)
    end

    it 'should not allow duplicates when randomising' do
      
    end


    it 'should allow the player to chose and score 3 cows' do
      allow(game).to receive(:comp_number).and_return([5,6,7,8])
      game.player_choice(8562)
      p game.player_number
      p game.comp_number
      p game.cows
      # p game.has_cows?
      expect(game.cows).to eq(3)
    end
    #
    # it 'should allow the player to chose and score 2 bulls if they chose right index' do
    #   allow(game).to receive(:comp_choice).and_return([5,6,7,8])
    #   game.player_choice(5612)
    #   expect(game.bulls).to eq(2)
    # end

  end
