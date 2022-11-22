require_relative '../src/music_album'

describe MusicAlbum do
  context 'should have a method can_be_archived?' do
    music = MusicAlbum.new('Apetite for Destruction', 'Rock', 'Guns N Roses', 'Geffen', 'Geffen', '1987-7-21', true)
    it 'should return true when the music is on spotify' do
      expect(music.can_be_archived?).to eq(true)
    end

    it 'should return false when the music is not on spotify' do
      music = MusicAlbum.new('Apetite for Destruction', 'Rock', 'Guns N Roses', 'Geffen', 'Geffen', '1987-7-21', false)
      expect(music.can_be_archived?).to eq(false)
    end
  end
end
