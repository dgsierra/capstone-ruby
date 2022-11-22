require_relative '../src/source'
require_relative '../src/item'

describe Source do
  it 'should create a new source' do
    source = Source.new('Penguin')
    expect(source).to be_a(Source)
  end

  it 'validate that only accepts one parameter' do
    expect { Source.new }.to raise_error(ArgumentError)
    expect { Source.new('Penguin', 'extra') }.to raise_error(ArgumentError)
  end
end