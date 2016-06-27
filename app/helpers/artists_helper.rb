module ArtistsHelper
  def artist_select(nested, song)
    if nested
      song.artist.name
    else
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    end
  end
end
