<template>
    <h1>{{ $route.params.id }}</h1>
  <div class="w-75">
    <h1 class="p-5">VhlOne d'agence {{ agenceName }}</h1>

    <div class="p-1 bg-info">
      <h3 class="bg-success text-white fw-bolder p-2 text-center">
        {{ vhl.matricule }}
      </h3>

      <p>
        Matricule :
        <span class="fw-bolder text-bg-success p-1 mx-2">{{
          vhl.matricule
        }}</span>
      </p>
      <p>Marque : {{ vhl.marque }}</p>
      <p>Affectation : {{ vhl.agenceId }}</p>
      <p>Proprietaire : {{ vhl.intitule }}</p>
      <p>DMC : {{ vhl.date }}</p>
      <p >Chassis : {{ agenceName }}</p>
      <p v-for="comment in comments" :key="comment.index">Type : {{ comment.comment }}</p>

      <!-- <router-link class="btn btn-warning float-end" :to="{name:'EditCamionView',params:{id:$route.params.id}}"> modifier </router-link> -->
      <button class="btn btn-danger me-2" @click="componentComment=!componentComment"> + Commentaire </button>
      <div v-if="componentComment">
        <!-- <CreateCommentView :vhl="vhl" @closing="componentComment=false"/> -->
      </div>
    </div>
  </div>
</template>

<script>

//import CreateCommentView from "./CreateCommentView.vue";
import { useBasesStore } from "./../store/bases.js";
export default {


  data() {
    return {
      base:useBasesStore(),
      vhl: {},
      agenceName:'',
      comments:{},
      nbComments:'',
      componentComment:false
    }
  },

  methods: {
    getVhl() {
      return this vhl= this.$route.params.id;
    },

  },
  async mounted() {
    // const data = await this.axios.get(
    //  // `api/vhls/${this.$route.params.id}`
    //  `api/vhls/${this.$route.params.id}`
    // );

    this.vhl = data.data;
    this.agenceName=this.vhl.agence.agence
    this.comments=this.vhl.comments
    this.nbComments=this.vhl.comments.length
    console.log(this.nbComments)
  },
};
</script>

<style>
div h1 {
  background-color: rgba(173, 173, 234, 0.377);
}
</style>
