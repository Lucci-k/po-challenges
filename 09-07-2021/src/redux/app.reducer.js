import { ACTION_TYPES } from "./app.types"

const appReducer = (state = {header: 'Select Item', desc: ''}, action) => {
  switch(action.type) {
    case ACTION_TYPES.UPDATE_DETAILED_VIEW: 
      return action.payload
    default: 
      return state
      
  }
}

export default appReducer