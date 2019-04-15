require 'createNewPhone'

describe CreateNewPhone do
  subject(:createNewPhone) { described_class.new }
  it 'Joins an array' do
    expect(createNewPhone.joinNumbers([1,2,3,4,5,6,7,8,9,0])).to eq('1234567890')
  end
  it 'Joins an array' do
    expect(createNewPhone.joinNumbers([1,2,3,4,5,6,7,8,9,3])).to eq('1234567893')
  end
  it 'Returns error message if received array doesn\'t have 10 numbers' do
    expect(createNewPhone.joinNumbers([1,2,3])).to eq('Array must contain 10 digits')
  end
  it 'returns the correct phone number format' do
    expect(createNewPhone.createPhoneNumber([1,2,3,4,5,6,7,8,9,0])).to eq ('(123) 456-7890')
  end
  it 'returns the correct phone number format' do
    expect(createNewPhone.createPhoneNumber([1,2,3,4,5,6,7,8,9,8])).to eq ('(123) 456-7898')
  end
  it 'returns the correct phone number format' do
    expect(createNewPhone.createPhoneNumber([1,2,3,4,5,6,7])).to eq ('Array must contain 10 digits')
  end
end
