<template>
  <div class="container">
    <form @submit.prevent="editCamion()" class="row g-3">
      <div class="col-md-6">
        <label for="inputEmail4" class="form-label">Matricule</label>
        <input type="text" class="form-control" id="inputEmail4" v-model="camion.Matricule" />
      </div>
      <div class="col-md-6">
        <label for="inputPassword4" class="form-label">Marque</label>
        <input type="text" class="form-control" id="inputPassword4"  v-model="camion.Marque" />
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
        <input type="text" class="form-control" id="inputCity"  v-model="camion.agenceId"/>
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
{{camion.Matricule}}
{{camion.Marque}}
{{camion.agenceId}}

</div>

  </div>
</template>


<script>
export default {
 props: ['id'],
     data() {
        return {
            url: `/camion/${this.id}`,
            camion: {
                Matricule: '',
                Marque: '',
                agenceId:''
            }
        }
    },
    methods: {

       editCamion() {
           if(this.camion.Matricule == '' || this.camion.Marque == '') {
               return;
           }

            fetch(this.url, {
                method: 'PUT',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(this.camion)
            })
            .then(res => res.json())
            .then(data => this.$router.push('/camion'))
            .catch(err => console.log(err.message))

       }

    },
     mounted() {

            fetch(this.url)
            .then(res => res.json())
            .then(data => this.camion = data)
            .catch(err => console.log(err))

    }
}
</script>


