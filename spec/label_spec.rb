require_relative '../src/label'
require_relative '../src/item'

describe Label do
  it 'should create a new label' do
    label = Label.new('Penguin', 'red')
    expect(label).to be_a(Label)
  end

  it 'validate that only accepts two parameters' do
    expect { Label.new }.to raise_error(ArgumentError)
    expect { Label.new('Penguin') }.to raise_error(ArgumentError)
    expect { Label.new('Penguin', 'red', 'extra') }.to raise_error(ArgumentError)
  end
end
