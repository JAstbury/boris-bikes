require 'garages'

describe Garage do

  it { is_expected.to respond_to :bikes }
  subject(:garage) { described_class.new }
  let(:bike) { Bike.new }

  describe '#initialize' do

    it 'initially there are no bikes in the garage' do
      expect(subject.bikes).to eq []
    end
  end

  describe '#fix_bikes' do

    before { subject.instance_variable_set(:@bikes, [bike]) }

    it 'changes bike to fixed' do
      bike.report
      subject.fix_bikes
      expect(bike).to be_working
    end

  end

end
