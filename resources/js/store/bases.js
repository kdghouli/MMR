import { defineStore } from "pinia";
// Import axios to make HTTP requests
import axios from "axios";
export const useBasesStore = defineStore("bases", {


  state: () => ({
    base:[],
    camions: [],
    voitures:[],
    scooters:[],
    chariots:[],
    agences:[],
    commentaires:[],
    status:[],
    searchText:'',
    listCamion:{},
    vhl:{},

    agenca:[]



  }),


  // ######################################################

  getters: {
    getMat(state) {
      return (age) => state.camions.filter((x) => x.agence_id == age).map((x)=>x.matricule)
    },

    getOneVhl(id) {
        return this.vhl= this.base.filter(x => x.id == id)
     },





    getCamions(){
      return this.camions=this.base.filter(x => x.categorie_id==1)
    },
    getVoitures(){
      return this.voitures=this.base.filter(x => x.categorie_id==2)
    },
    getScooters(){
      return this.scooters=this.base.filter(x => x.categorie_id==3)
    },
    getChariots(){
      return this.chariots=this.base.filter(x => x.categorie_id==4)
    },
    getcomments(){
      return this.commentaires=this.base.comments
    },
    getAgences(){
      return this.agences=this.base.agences
    },
    getStatus(){
      return this.status=this.base.status
    },


    // async searchMatricule(){
    //   try{

    //     this.listCamion = await axios.get(`/vhls?q=${this.searchText}`);



    //     console.log(this.listCamion)
    //   }
    //  catch (err) {
    //   console.log(err);
    // }
    // }
  },


  // ######################################################

  actions: {

    async fetchBase() {
      try {
        console.log('fetchBase - BasesPinia');
        const resp = await axios.get("/api/vhls");
        this.base =resp.data;

       console.log(this.base)
      } catch (error) {
        console.log(error);
      }
    },

    //    async getAgencesList(){
    //     const agences = new Set();
    //     const respAg = await axios.get("/api/agences");
    //     console.log(respAg);

    //     this.agenca.forEach(x => agences.add(x.agence));
    //     return Array.from(agences);






        // },
    //     agences() {
    //         const agences = new Set();
    //         this.agenca.forEach(x => agences.add(x.agence));
    //         return Array.from(agences);

    //       },

    //       conta(bb) {
    //         return Object.keys(this.camions.filter(x => x.agenceId == bb)).length






    //  },


    }


});
