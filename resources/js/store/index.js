import { createStore } from 'vuex';

import axios from 'axios';

export default createStore({
  state: {

    url: "https://jsonplaceholder.typicode.com/posts",
    url2:"http://localhost:5000/camion?_embed=comments",
    donnee:[],
    camions:[],
    agences:[],
    voitures:[],
    scooters:[],
    
  },

  getters: {
    getDonnee: (state) => state.donnee,
    getCamions: (state) => state.camions
  },

  mutations: {
    set_donnee(state, donnee) {
          state.donnee = donnee },
    set_camions(state, camions) {
            state.donnee = camions }
  },



  actions: {

    async getDonnees({commit,state}) {
      //Get data
      console.log('star katec')
      const dato = await axios.get(state.url)    
      commit('set_donnee', dato.data);
      
      
    },

    //  async getCamions({commit,state}) {
    // //   const camion = await axios.get(state.url2)    
    // //   commit('set_camions', camion.data);
    // //   console.log('end katec')
    // }
  },

  modules: {
  }
});
