import { ACTION_TYPES } from "./app.types"

export const updateDetailedView = (foodItem) => {
  return {
    type: ACTION_TYPES.UPDATE_DETAILED_VIEW,
    payload: foodItem
  }
}