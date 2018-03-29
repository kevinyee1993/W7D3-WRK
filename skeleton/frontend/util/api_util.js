export const fetchAllPokemon = () => {
  return $.ajax('api/pokemon', {
    method: 'GET',
    dataType: 'json'
  });
};
