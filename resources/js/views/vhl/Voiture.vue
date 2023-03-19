<template>

<h1>Voiture</h1>
    
    <div class="row">
        <div class="col-sm-4 text-right">
            <router-link to="/new" class="btn btn-primary">New</router-link>
        </div>
    </div>

    <div class="row" v-if="voitures.length">
        <div class="my-1 col-md-4 " v-for="vhl in voitures" :key="vhl.id">

       

              <OneVhl :vhl="vhl"  />



           
        </div>
    </div> 

</template>
<script>
import OneVhl from './OneVhl.vue'
export default {
  components:{OneVhl},
  data() {
    
    return {
      
      voitures: [],
      
    };
  },
  mounted() {
    
      this.getDonne() },
      
      
  methods: {
     async getDonne() {
       await this.axios.get("http://localhost:5000/voiture").then((resp) => {
        this.voitures = resp.data})
        console.log(this.voitures)}
  },
};
</script>
<style lang="">
</style>