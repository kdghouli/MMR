<template>

  <div class="table-responsive-sm">
    <table class="table table-hover table-bordered table-sm caption-top ">
      <caption>Liste des chariots elevateurs</caption>
      <thead class="table-dark">
        <tr>
          <th scope="col">Matricule</th>
          <th scope="col">Marque</th>
          <th scope="col">Type</th>
          <th scope="col">Chassis</th>
          <th scope="col">DMC</th>
        </tr>
      </thead>
      <tbody v-for="chariot in chariots" :key="chariot.matricule">
        <tr>
          <th scope="row">{{chariot.matricule}}</th>
          <td>{{chariot.marque}}</td>
          <td>{{chariot.Type}}</td>
          <td>{{chariot['chassis ']}}</td>
          <td>{{chariot.dmc}}</td>
        </tr>

      </tbody>

    </table>
  </div>
</template>

<script>
export default {
  data(){
  return {

    chariots:[]


  }},
  methods:{

async getChariots() {
      await this.axios.get("/chariot")
        .then((resp) => {
          this.chariots = resp.data;
        });
      console.log(this.chariots);
    },





  },


  mounted() {
      this.getChariots()
    },




};


</script>

<style>
</style>
