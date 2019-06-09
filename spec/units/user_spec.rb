require './lib/user.rb'

describe '#name' do

  it 'can display a user details' do
    user = User.new('Ollie','ol.porter@me.com','Passw0rd')
    expect(user.name).to eq('Ollie')
  end
end
