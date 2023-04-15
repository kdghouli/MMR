<template>
  <div>
    <div class="row mt-2">
      <h3 class="col-md-6 mt-1">Liste des véhicules Agence :</h3>
      <div class="col-5">
        <select class="form-select fs-5" v-model="Selected" @click="filterMatricule">
          <option value="0" selected>Tous</option>
          <option v-for="agence in agencaList" :key="agence" :value="agence[0]">
            {{ agence[1] }}
          </option>
        </select>
      </div>
    </div>

    <!-- Camions -->

    <p class="pt-2">
      Nombre des
      <span class="fw-bolder"
        ><span><i class="bi bi-truck text-success fs-4"></i></span> Camions: </span
      ><span class="badge rounded-pill bg-success ms-1">
        {{ camionsMat.length }}
      </span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2">
      <ul v-for="camion in camionsMat" class="list-group" :key="camion">
        <li
          class="list-group-item list-group-item-action d-flex justify-content-between align-items-center list-group-item-success mb-1 shadow-sm"
          :class="{
            ['bg-danger fw-bold text-white animate__animated animate__headShake animate__infinite']:
              camion.comment.length,
          }"
        >
          <i class="bi bi-truck fs-5 me-1"></i>
          <router-link
            class="text-decoration-none"
            :to="{ name: 'OneVhlView', params: { id: camion.id } }"
            >{{ camion.matricule }}
          </router-link>
          <span class="fw-lighter ms-4 me-auto align-bottom" style="font-size: 9px">{{
            camion.intitule.nom?camion.intitule.nom:"ok"
          }}</span>
          <span class="badge bg-success rounded-pill" v-if="camion.comment.length">{{
            camion.comment.length
          }}</span>
        </li>
      </ul>
    </div>
    <hr />

    <!-- Voitures -->

    <p class="pt-2">
      Nombre des <span class="fw-bolder"> Voitures: </span
      ><span class="badge rounded-pill bg-primary ms-1">{{ voituresMat.length }}</span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2">
      <ul v-for="voiture in voituresMat" class="list-group" :key="voiture">
        <li
          class="list-group-item list-group-item-action d-flex justify-content-between align-items-center list-group-item-primary mb-1 shadow-sm"
          :class="{
            ['bg-danger fw-bold text-white animate__animated animate__headShake animate__infinite']:
              voiture.comment.length,
          }"
        >
          <i class="bi bi-car-front-fill text-primary fs-5 me-1"></i>
          <router-link
            class="text-decoration-none"
            :to="{
              name: 'OneVhlView',
              params: { id: voiture.id },
            }"
            >{{ voiture.matricule }}</router-link
          >
          <span class="fw-lighter ms-2" style="font-size: 9px"
            >{{ voiture.type }}&nbsp;&nbsp;&nbsp;&nbsp;{{ voiture.utilisateur }}</span
          >
          <span class="badge bg-primary rounded-pill" v-if="voiture.comment.length">{{
            voiture.comment.length
          }}</span>
        </li>
      </ul>
    </div>
    <hr />

    <!-- Chariots -->

    <p class="pt-2">
      Nombre des
      <span class="fw-bolder"
        ><img class="me-1" src="" alt="" style="width: 30px" /> Chariots
      </span>
      <span class="badge rounded-pill bg-warning ms-1">{{ chariotsMat.length }} </span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2">
      <ul v-for="chariot in chariotsMat" class="list-group" :key="chariot">
        <li
          class="list-group-item list-group-item-action d-flex justify-content-between align-items-center list-group-item-warning mb-1 shadow-sm"
          :class="{
            ['bg-danger fw-bold text-white animate__animated animate__headShake animate__infinite']:
              chariot.comment.length,
          }"
        >
          <img class="me-1" src="" alt="" style="width: 22px" />
          <router-link
            class="text-decoration-none"
            :to="{
              name: 'OneVhlView',
              params: { id: chariot.matricule },
            }"
            >{{ chariot.matricule }}</router-link
          >
          <span
            class="fw-lighter ms-4 me-auto align-bottom text-truncate"
            style="font-size: 9px"
            >{{ chariot.marque }}</span
          ><span class="badge bg-warning rounded-pill" v-if="chariot.comment.length">{{
            chariot.comment.length
          }}</span>
        </li>
      </ul>
    </div>
    <hr />

    <!-- Scooters -->

    <p class="py-2">
      Nombre des
      <span class="fw-bolder"
        ><img class="me-1" src="" alt="" style="width: 30px" /> Scooters : </span
      ><span class="badge rounded-pill bg-danger ms-1">{{ scootersMat.length }}</span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2 mb-2">
      <ul v-for="scooter in scootersMat" class="list-group" :key="scooter">
        <li
          class="list-group-item list-group-item-action d-flex justify-content-between align-items-center list-group-item-danger mb-1 shadow-sm"
          :class="{
            ['bg-danger fw-bold text-white animate__animated animate__heartBeat animate__infinite']:
              scooter.comment.length,
          }"
        >
          <img class="me-1" src="" alt="" style="width: 22px" />
          <router-link
            class="text-decoration-none"
            :to="{
              name: 'OneVhlView',
              params: { id: scooter.id },
            }"
            >{{ scooter.matricule }}</router-link
          >
          <span
            class="fw-lighter ms-4 me-auto align-bottom text-truncate"
            style="font-size: 10px"
            >{{ scooter.utilisateur }}</span
          ><span class="badge bg-danger rounded-pill" v-if="scooter.comment.length">{{
            scooter.comment.length
          }}</span>
        </li>
      </ul>
    </div>

    <!-- ------modal -->
    <div
      class="modal fade"
      id="staticBackdrop"
      data-bs-backdrop="static"
      data-bs-keyboard="false"
      tabindex="-1"
      aria-labelledby="staticBackdropLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title text-success fw-bolder" id="staticBackdropLabel">
              Création Véhicule sur la base
            </h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form @submit.prevent="createVhl()">
              <div class="row">
                <div class="col-6 mb-2">
                  <label for="matricule" class="form-label fw-bolder">Matricule</label>
                  <input type="text" class="form-control" v-model="matriculeIn" />
                </div>
                <div class="col-6 mb-2">
                  <label for="marque" class="form-label fw-bolder">Marque</label>
                  <input type="text" class="form-control" v-model="marqueIn" />
                </div>
              </div>
              <div class="row">
                <div class="col-4 mb-2">
                  <label for="categorie" class="form-label fw-bolder">Catégorie</label>
                  <select class="form-select fs-5" name="" id="" v-model="categorieIn">
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
                    v-model="agenceIn"
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
                  <input type="date" class="form-control" v-model="dateIn" />
                </div>
                <div class="col-8 mb-2">
                  <label for="intitule" class="form-label fw-bolder">Propriétaire</label>
                  <select
                    class="form-select fs-5"
                    aria-label="Default select example"
                    v-model="intituleIn"
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
                  v-model="statuIn"
                >
                  <option v-for="statu in statusList" :key="statu" :value="statu[0]">
                    {{ statu[1] }}
                  </option>
                </select>
              </div>
              <div class="col mb-4">
                <label for="utilisateur" class="form-label fw-bolder">Utilisateur</label>
                <input type="text" class="form-control" v-model="utilisateurIn" />
              </div>

              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                  Fermer
                </button>
                <button type="submit" class="btn btn-primary" data-bs-dismiss="modal">
                  Enregistrer
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- fin Modal -->
  </div>
</template>

<script>
import axios from "axios";
import { useBasesStore } from "../store/bases.js";
export default {
  data() {
    return {
      base: useBasesStore(),
      agences: useBasesStore().agences,
      db: {},
      camionsMat: {},
      voituresMat: {},
      scootersMat: {},
      chariotsMat: {},
      CommentsDb: useBasesStore().commentaires,
      Selected: 0,
      agenca: {},
      statusList: useBasesStore().optionStatus,
      statu_id: "",
      vhl_id: "",
      intituleListe: useBasesStore().optionIntitules,

      agencaList: useBasesStore().optionAgences,

      matriculeIn: "",
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




    createVhl() {

      console.log("createVhl");
      const vhl = this;
      axios
        .post("/creata", {
        matricule: this.matriculeIn,
        marque: this.marqueIn,
        date_mc: this.dateIn,
        agence_id: this.agenceIn,
        statu_id: this.statuIn,
        intitule_id: this.intituleIn,
        categorie_id: this.categorieIn,
        utilisateur: this.utilisateurIn,
         },{headers:{ 'Content-Type': 'application/json'}})
        .then((res) => {
          console.log(res);
        }).then(
            ()=>{
        this.matriculeIn='',
        this.marqueIn='',
        this.dateIn='',
        this.agenceIn='',
        this.statuIn='',
        this.intituleIn='',
        this.categorieIn='',
        this.utilisateurIn=''
            }
        )
        .then(() => this.$router.push("/"))
        .catch((err) => console.log(err.message));

      console.log("createVhl - ok");

    },
    // calcComments(ddd) {
    //   const nbComments = this.CommentsDb.filter((sel) => sel.vhl_id == ddd);
    //   return nbComments.length;
    // },
  },

  computed: {
    filterMatricule() {
      console.log("filterMatricule");
      if (this.Selected == "0") {
        this.camionsMat = this.base.getCamions;
        this.voituresMat = this.base.getVoitures;
        this.scootersMat = this.base.getScooters;
        this.chariotsMat = this.base.getChariots;
      } else {
        (this.camionsMat = this.base.getCamions.filter(
          (x) => x.agence_id == this.Selected
        )),
          (this.voituresMat = this.base.getVoitures.filter(
            (x) => x.agence_id == this.Selected
          )),
          (this.chariotsMat = this.base.getChariots.filter(
            (x) => x.agence_id == this.Selected
          )),
          (this.scootersMat = this.base.getScooters.filter(
            (x) => x.agence_id == this.Selected
          ));
      }

      // this.CommentsDb = this.db.comments
    },
    // getListStatus() {
    //   console.log("getListStatus");
    //   this.vhl_id = this.$route.params.id;
    //   const lista = new Map();
    //   this.base.status.forEach((x) => lista.set(x.id, x.etat));
    //   this.statusList = Array.from(lista);
    //   return console.log(this.statusList);
    // },

    // async getListAgences() {
    //   console.log("getListAgences");
    //   const respAg = await axios.get("/api/agences");
    //   this.agenca = respAg.data;
    //   const agences = new Map();
    //   this.agenca.forEach((x) => agences.set(x.id, x.nom));
    //   this.agencaList = Array.from(agences);
    //   return console.log(this.agencaList);
    // },

  },

  async mounted() {
    await this.base.fetchBase();
    await this.base.fetchComments();
    await this.base.fetchIntitules();
    await this.base.fetchStatus();
    await this.base.fetchAgences();


    this.filterMatricule;
    this.agencaList= useBasesStore().optionAgences




  },
};
</script>
<style></style>
