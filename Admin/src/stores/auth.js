// stores/counter.js
import { defineStore } from 'pinia'

export const useCounterStore = defineStore('counter', {
  // state: () => {
  //   return { count: 0 }
  // },
  // could also be defined as
  state: () => ({ is_logged: (localStorage.getItem('token')) ? 1 : 0 }),
  actions: {
    is_logged_in() {
      this.is_logged = 1
    },

    is_logged_out() {
      this.is_logged = 0
    },
  },
})