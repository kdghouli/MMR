<template>
  <div class="container">
    <form @submit.prevent="ajouterEquipe()" class="row g-3">
      <div class="col-md-6">
        <label for="inputEmail4" class="form-label">Matricule</label>
        <input type="text" class="form-control" id="inputEmail4" v-model="Matricule" />
      </div>
      <div class="col-md-6">
        <label for="inputPassword4" class="form-label">Marque</label>
        <input type="text" class="form-control" id="inputPassword4"  v-model="Marque" />
      </div>
      <div class="col-12">
        <label for="inputAddress" class="form-label">Intitule</label>
        <input
         type="text"
          class="form-control"
          id="inputAddress"
          placeholder="ECCBC Morrocco"
        />
      </div>

      <div class="col-md-6">
        <label for="inputCity" class="form-label">Agence</label>
        <input type="text" class="form-control" id="inputCity"  v-model="agenceId"/>
      </div>
      <div class="col-md-4">
        <label for="inputState" class="form-label">Type</label>
        <select id="inputState" class="form-select">
          <option selected>Choose...</option>
          <option>...</option>
        </select>
      </div>
      <div class="col-md-2">
        <label for="inputZip" class="form-label">Equipement</label>
        <input type="text" class="form-control" id="inputZip" />
      </div>

      <div class="col-12">
        <button class="btn btn-primary d-block">Sign in</button>
      </div>
    </form>
<div class="well">
{{Matricule}}
{{Marque}}
{{agenceId}}

</div>
  
  </div>
</template>



<script>
export default {
  data() {
    return {
      Matricule: "",
      Marque:"",
      agenceId:""
    };
  },

  methods: {
    ajouterEquipe() {
      console.log("K");
        
          let camion = {
                Matricule: this.Matricule,
                Marque: this.Marque,
                agenceId:this.agenceId
            };
            
                fetch('http://localhost:5000/camion', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json'},
                    body: JSON.stringify(camion)
                })
                .then(() => this.$router.push('/camion'))
                .catch(err => console.log(err.message))




    },
  },
};
</script>

<style></style>
