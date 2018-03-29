# json.partial! 'api/pokemon/_pokemon', pokemon: @pokemon
json.pokemon do
  json.id @pokemon.id
  json.name @pokemon.name
  json.attack @pokemon.attack
  json.defense @pokemon.defense
  json.poke_type @pokemon.poke_type
  json.moves @pokemon.moves
  json.image_url asset_path(@pokemon.image_url)
end


json.items do
    json.set! @pokemon.id do
      @pokemon.items.each do |item|
        json.extract! item, :id, :name, :pokemon_id, :price, :happiness
        json.image_url asset_path(item.image_url)
      end
    end
end
# end


# @pokemon.items do |item|
# json.set! @pokemon.id
# json.extract! item, :id, :name, :pokemon_id, :price, :happiness
#   end
# @pokemon.items.each do |item|
# end
