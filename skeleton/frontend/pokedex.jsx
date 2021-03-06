import React from 'react';
import ReactDOM from 'react-dom';
import * as APIUtil from './util/api_util';
import { receiveAllPokemon, requestAllPokemon } from './actions/pokemon_actions';
import configureStore from './store/store';


document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  window.fetchAllPokemon = APIUtil.fetchAllPokemon;
  window.receiveAllPokemon = receiveAllPokemon;
  window.requestAllPokemon = requestAllPokemon;
  const store = configureStore();
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  ReactDOM.render(<h1>PIKAYA</h1>, root);
});
