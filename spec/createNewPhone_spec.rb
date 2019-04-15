require 'createNewPhone'

describe CreateNewPhone do
  subject(:createNewPhone) { described_class.new }
  it 'Joins an array' do
    expect(createNewPhone.joinNumbers([1,2,3,4,5,6,7,8,9,0])).to eq('1234567890')
  end
  it 'Joins an array' do
    expect(createNewPhone.joinNumbers([1,2,3,4,5,6,7,8,9,3])).to eq('1234567893')
  end
end
