import { createStore, applyMiddleware } from 'redux';
import rootReducer from '../reducers/root_reducer';
import { logger } from 'redux-logger';
import thunk from '../middleware/thunk';

//as soon as you start this line, you get to use dispatch bc its from store
const configureStore = () => createStore(rootReducer, applyMiddleware(thunk, logger));

export default configureStore;
