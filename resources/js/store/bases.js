import { defineStore } from "pinia";
// Import axios to make HTTP requests
import axios from "axios";
import { colors, message } from "laravel-mix/src/Log";
export const useBasesStore = defineStore("bases", {
    state: () => ({

        base: [],
        camions: [],
        voitures: [],
        scooters: [],
        chariots: [],
        agences: [],
        commentaires: [],
        status: [],
        intitules:[],
        searchText: "",
        listCamion: {},
        vhl: {},
        agenca: [],
    }),

    // ######################################################

    getters: {
        getMat(state) {
            return (age) =>
                state.camions
                    .filter((x) => x.agence_id == age)
                    .map((x) => x.matricule);
        },

        getOneVhl(id) {
            return (this.vhl = this.base.find((x) => x.id == id));
        },

        getCamions() {
            return (this.camions = this.base.filter(
                (x) => x.categorie_id == 1
            ));
        },
        getVoitures() {
            return (this.voitures = this.base.filter(
                (x) => x.categorie_id == 2
            ));
        },
        getScooters() {
            return (this.scooters = this.base.filter(
                (x) => x.categorie_id == 3
            ));
        },
        getChariots() {
            return (this.chariots = this.base.filter(
                (x) => x.categorie_id == 4
            ));
        },

        // getAgences() {
        //     return (this.agences = this.base.agences);
        // },
        // getStatus() {
        //     return (this.status = this.base.status);
        // },


        // LES OPTIONS SELECT

        optionStatus(state){

     console.log("optionStatus-getListStatus");
      const lista = new Map();
      state.status.forEach((x) => lista.set(x.id, x.etat));
      return Array.from(lista);

        },

        optionIntitules(state){

         console.log("optionIntitules-getListeIntitule");

        const lista = new Map();
        state.intitules.forEach((x) => lista.set(x.id, x.nom));
        return Array.from(lista);

               },

        optionAgences(state){

         console.log("optionAgences-getListStatus");
         const lista = new Map();
         state.agences.forEach((x) => lista.set(x.id, x.nom));
         return Array.from(lista);

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
                console.log("fetchBase - BasesPinia");
                const resp = await axios.get("/api/vhls");
                this.base = resp.data;

                console.log(this.base);
            } catch (error) {
                console.log(error);
            }
        },

        async fetchComments() {

            try {
                console.log('"fetchComments - BasesPinia"')
                const resp = await axios.get("/api/comments")
                this.commentaires = resp.data
            } catch (error) {
                console.log(error)

            }
        },

        async fetchStatus() {

            try {
                console.log('"fetchStatus - BasesPinia"')
                const resp = await axios.get("/api/status")
                this.status = resp.data;
                console.log(this.status)
            } catch (error) {
                console.log(error)

            }
        },

        async fetchIntitules() {

            try {
                console.log('"fetchIntitules - BasesPinia"')
                const resp = await axios.get("/api/intitule")
                this.intitules = resp.data;
                console.log(this.intitules)
            } catch (error) {
                console.log(error)

            }
        },

        async fetchAgences() {

            try {
                console.log('"fetchAgences - BasesPinia"')
                const resp = await axios.get("/api/agences")
                this.agences = resp.data;
                console.log(this.agences)
            } catch (error) {
                console.log(error)

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
    },
});
