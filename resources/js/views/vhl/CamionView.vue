<template>

  <div class="w-75">
    <h1 class="p-5">VhlOne d'agence {{vhl[0].matricule}}</h1>
    <div v-for="vhlo in vhl " :key="vhlo">




    <div class="p-1 bg-info">
      <h3 class="bg-success text-white fw-bolder p-2 text-center">
        {{ vhlo.matricule }}
      </h3>

      <p>
        Matricule :
        <span class="fw-bolder text-bg-success p-1 mx-2">{{ vhlo.matricule }}</span>
      </p>
      <p>Marque : {{ vhlo.marque }}</p>
      <p>Affectation : {{ vhlo.agence_id }}</p>
      <p>Proprietaire : {{ vhlo.intitule_id }}</p>
      <p>DMC : {{ vhlo.date_mc }}</p>
      <p>Chassis : {{ agenceName }}</p>
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
import { useBasesStore } from "./../../store/bases.js";
export default {
  data() {
    return {
      base: useBasesStore(),
      vhl:{},
      agenceName: "",
      comments: {},
      nbComments: "",
      componentComment: false,
    };
  },
computed:{
    vhl() {

      return  this.vhl = this.base.base.filter((x) => x.id == this.$route.params.id);

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
}};
</script>

<style>
div h1 {
  background-color: rgba(173, 173, 234, 0.377);
}
</style>
