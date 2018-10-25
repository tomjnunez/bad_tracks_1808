RSpec.describe "When a user adds songs to their cart" do
  it "a message is displayed" do

  end

  it "the message correctly increments for multiple songs" do
    artist = Artist.create(name: 'Rick Astley')
    song = artist.songs.create(title: 'Never Gonna Give You Up', length: 250, play_count: 1000000)
    song = artist.songs.create(title: 'Yeee hawwwww', length: 251, play_count: 1000001)

    visit songs_path

    click_button "Add Song"

    expect(page).to have_content("You now have 1 copy of #{song.title} in your cart.")

    click_button "Add Song"

    expect(page).to have_content("You now have 2 copies of #{song.title} in your cart.")
  end
end
