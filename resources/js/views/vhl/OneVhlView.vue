<template>
  <div class="my-1 bg-warning bg-gradient shadow p-1 border border-1 rounded">
    <h3 class="p-2 fw-bolder border border-danger text-center shadow-sm rounded">
      Fiche de Véhicule Immatriculé {{ vhl[0].matricule }}
    </h3>
    <div v-for="vhlo in vhl" :key="vhlo">
      <div class="p-1 bg-info border border-1 rounded">
        <h2 class="text-white fw-bolder p-1 text-center border border-2 rounded">
          {{ vhlo.categorie.nom.toUpperCase() }} : {{ vhlo.matricule }} au {{ vhlo.agence.nom }}
          <button type="button" class="btn btn-outline-danger my-auto btn-sm float-end align-items-center mt-1">modifier</button>
        </h2>

        <div class="row justify-content-evenly">
          <!-- card tech -->
          <div class="col-5 techCard bg-light bg-gradient rounded p-2 border border-2 shadow-sm">
            <p class="text-center fw-bolder text-dark fs-5 text-light border-bottom ">
              Fiche technique
            </p>
            <p>
              Matricule :
              <span class="fw-bold p-1 mx-2">{{ vhlo.matricule }}</span>
            </p>
            <p>
              Marque :<span class="fw-bold p-1 mx-2">{{ vhlo.marque }}</span>
            </p>
            <p>
              Affectation :
              <span class="fw-bold p-1 mx-2">{{ vhlo.agence.nom }}</span>
            </p>
            <p>
              Proprietaire :<span class="fw-bold p-1 mx-2">{{ vhlo.intitule.nom }}</span>
            </p>
            <p>
              DMC :
              <span class="fw-bold p-1 mx-2">{{ vhlo.date_mc }}</span>
            </p>
            <p>utilisé par :<span class="fw-bold p-1 mx-2">{{ vhlo.utilisateur }}</span></p>





          </div>
          <!-- card Historique -->
          <div class="col-5 techCard bg-light bg-gradient rounded p-2 border border-2 shadow-sm">
            <p class="text-center fw-bolder text-dark fs-5 text-light border-bottom">
              Historique
            </p>
          </div>
        </div>




        <!-- <p v-for="comment in comments" :key="comment.index">Type : {{ comment.comment }}</p> -->

        <!-- <router-link class="btn btn-warning float-end" :to="{name:'EditCamionView',params:{id:$route.params.id}}"> modifier </router-link> -->
        <!-- <button class="btn btn-danger me-2" @click="componentComment=!componentComment"> + Commentaire </button> -->
        <div v-if="componentComment">
          <!-- <CreateCommentView :vhl="vhl" @closing="componentComment=false"/> -->
        </div>
      </div>
    </div>
  </div>
</template>

<script>
//import CreateCommentView from "./CreateCommentView.vue";
import { useBasesStore } from "../../store/bases.js";
export default {
  data() {
    return {
      base: useBasesStore(),
      vhl: {},
      agenceName: "",
      comments: {},
      nbComments: "",
      componentComment: false,
    };
  },
  computed: {
    vhl() {
      return (this.vhl = this.base.base.filter((x) => x.id == this.$route.params.id));
    },
  },

  methods: {
    //   async mounted() {
    //     // const data = await this.axios.get(
    //     //  // `api/vhls/${this.$route.params.id}`
    //     //  `api/vhls/${this.$route.params.id}`
    //     // );
    //    // this.getOneVhl();
    //     // console.log(this.vhl);
    //     // this.agenceName=this.vhl.agence.agence
    //     // this.comments=this.vhl.comments
    //     // this.nbComments=this.vhl.comments.length
    //     // console.log(this.nbComments)
    //   },
  },
};
</script>

<style>
div h1 {
  background-color: rgba(173, 173, 234, 0.377);
}
</style>
