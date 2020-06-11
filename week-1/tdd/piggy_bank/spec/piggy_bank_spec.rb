require 'piggy_bank'

describe PiggyBank do
  describe 'initialize' do
    it 'can create an instance of a piggy bank' do
      piggy_bank = PiggyBank.new
      expect(piggy_bank).to be_an_instance_of(PiggyBank)
    end
  end

  describe '#add_coins' do
    it 'can add coins to the piggy bank' do
      piggy_bank = PiggyBank.new
      piggy_bank.add_coins(5)
      expect(piggy_bank.coins).to eq(5)
    end
  end

  describe '#shake' do
    it 'clings when shaken if there is money inside it' do
      piggy_bank = PiggyBank.new
      piggy_bank.add_coins(5)
      expect(piggy_bank.shake).to eql('cling')
    end
  end

  describe '#shake' do
    it 'clings when shaken if there is no money in it' do
      piggy_bank = PiggyBank.new
      expect(piggy_bank.shake).to eql(nil)
    end
  end

  describe '#break' do
    it 'returns the number of coins that was in the piggy bank when it breaks' do
      piggy_bank = PiggyBank.new
      piggy_bank.add_coins(5)
      expect(piggy_bank.break).to eql('returns 5 coins')
    end
  end

  describe '#break' do
    it 'returns the 1 coin that was in the piggy bank when it breaks' do
      piggy_bank = PiggyBank.new
      piggy_bank.add_coins(1)
      expect(piggy_bank.break).to eql('returns 1 coin')
    end
  end

  # describe '#break' do
  #   it 'returns 0 coins after the piggy bank is broken' do
  #     piggy_bank = PiggyBank.new
  #     piggy_bank.add_coins(0)
  #     piggy_bank.break
  #     expect(piggy_bank.break).to eql(0)
  #   end
  # end
end