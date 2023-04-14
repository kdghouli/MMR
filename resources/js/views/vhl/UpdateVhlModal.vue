<template>
  <Transition name="modal">
    <div v-if="show" class="modal-mask">
      <div class="modal-container">

        <form @submit.prevent="UpdateVhl()">
              <div class="row">
                <div class="col-6 mb-2">
                  <label for="matricule" class="form-label fw-bolder">Matricule</label>
                  <input type="text" class="form-control" v-model="vhl[0].matricule"/>
                </div>
                <div class="col-6 mb-2">
                  <label for="marque" class="form-label fw-bolder">Marque</label>
                  <input type="text" class="form-control" v-model="vhl[0].marque" />
                </div>
              </div>
              <div class="row">
                <div class="col-4 mb-2">
                  <label for="categorie" class="form-label fw-bolder">Catégorie</label>
                  <select class="form-select fs-5" name="" id="" v-model="vhl[0].categorie_id">
                    <option value="1">Camion</option>
                    <option value="2">Voiture</option>
                    <option value="3">Scooter</option>
                    <option value="4">Chariot</option>
                    <option value="5">Autre</option>
                  </select>
                </div>
                <div class="col-8 mb-2">
                  <label for="agence" class="form-label fw-bolder">Agence</label>

                  <select
                    class="form-select fs-5"
                    aria-label="Default select example"
                    v-model="vhl[0].agence_id"
                  >
                    <option v-for="agence in agencaList" :key="agence" :value="agence[0]">
                      {{ agence[1] }}
                    </option>
                  </select>
                </div>
              </div>

              <div class="row">
                <div class="col-4 mb-2">
                  <label for="date_mc" class="form-label fw-bolder">Date MC</label>
                  <input type="date" class="form-control" v-model="vhl[0].date_mc" />
                </div>
                <div class="col-8 mb-2">
                  <label for="intitule" class="form-label fw-bolder">Propriétaire</label>
                  <select
                    class="form-select fs-5"
                    aria-label="Default select example"
                    v-model="vhl[0].intitule_id"
                  >
                    <option
                      v-for="intitule in intituleListe"
                      :key="intitule"
                      :value="intitule[0]"
                    >
                      {{ intitule[1] }}
                    </option>
                  </select>
                </div>
              </div>

              <div class="col mb-2">
                <label for="statu" class="form-label fw-bolder">Etat Acuel</label>
                <select
                  class="form-select fs-5"
                  aria-label="Default select example"
                  v-model="vhl[0].statu_id"
                >
                  <option v-for="statu in statusList" :key="statu" :value="statu[0]">
                    {{ statu[1] }}
                  </option>
                </select>
              </div>
              <div class="col mb-4">
                <label for="utilisateur" class="form-label fw-bolder">Utilisateur</label>
                <input type="text" class="form-control" v-model="vhl[0].utilisateur" />
              </div>

              <div class="modal-footer">
                <button type="button" class="btn btn-secondary modal-default-button" @click="$emit('close')" >
                  Fermer
                </button>
                <button type="submit" class="btn btn-primary" data-bs-dismiss="modal">
                  Enregistrer
                </button>
              </div>
            </form>




      </div>
    </div>
  </Transition>
</template>

<script>
import { useBasesStore } from "../../store/bases.js";
export default {
  nam: "updatevhl",
  props: {
    show: Boolean,
    vhlo: String,
    vhl:Array
  },
  data() {
    return {
      statusList: useBasesStore().optionStatus,
      intituleListe: useBasesStore().optionIntitules,
      agencaList: useBasesStore().optionAgences,

      matriculeIn: this.vhl.matricule,
      marqueIn: "",
      dateIn: "",
      agenceIn: "",
      statuIn: "",
      intituleIn: "",
      categorieIn: "",
      utilisateurIn: "",
    };
  },
  methods: {
    async getListAgences() {
      console.log("getListAgences");
      const respAg = await axios.get("/api/agences");
      this.agenca = respAg.data;
      const agences = new Map();
      this.agenca.forEach((x) => agences.set(x.id, x.nom));
      this.agencaList = Array.from(agences);
      return console.log(this.agencaList);
    },
  },
};
</script>

<style>
.modal-mask {
  position: fixed;
  z-index: 9998;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  display: flex;
  transition: opacity 0.3s ease;
}

.modal-container {
  width: 600px;
  margin: auto;
  padding: 20px 30px;
  background-color: #fff;
  border-radius: 2px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.33);
  transition: all 0.3s ease;
}

.modal-header h3 {
  margin-top: 0;
  color: #42b983;
}

.modal-body {
  margin: 20px 0;
}

.modal-default-button {
  float: right;
}

/*
 * The following styles are auto-applied to elements with
 * transition="modal" when their visibility is toggled
 * by Vue.js.
 *
 * You can easily play with the modal transition by editing
 * these styles.
 */

.modal-enter-from {
  opacity: 0;
}

.modal-leave-to {
  opacity: 0;
}

.modal-enter-from .modal-container,
.modal-leave-to .modal-container {
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
</style>
