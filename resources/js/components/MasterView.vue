<template>
  <div>
    <div class="row mt-2">
      <h3 class="col-6 mt-1">Liste des véhicules Agence :</h3>
      <div class="col-5">
        <select
          class="form-select fs-5"
          aria-label="Default select example"
          v-model="Selected"
          @click="filterMatricule"
        >
          <option value="tous">Tous</option>
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
      ><span class="badge rounded-pill bg-success ms-1">{{ camionsMat.length }}</span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2">
      <ul v-for="camion in camionsMat" class="list-group" :key="camion">
        <li
          class="list-group-item list-group-item-action d-flex justify-content-between align-items-center list-group-item-success mb-1 shadow-sm"
          :class="{
            ['bg-danger fw-bold text-white animate__animated animate__headShake animate__infinite']: calcComments(
              camion.id
            ),
          }"
        >
          <i class="bi bi-truck fs-5 me-1"></i>
          <router-link
            class="text-decoration-none"
            :to="{ name: 'OneVhlView', params: { id: camion.id } }"
            >{{ camion.matricule }}
          </router-link>
          <span class="fw-lighter ms-4 me-auto align-bottom" style="font-size: 9px">{{
            camion.intitule.nom
          }}</span>
          <span class="badge bg-success rounded-pill" v-if="calcComments(camion.id)">{{
            calcComments(camion.id)
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
          <span class="badge bg-primary rounded-pill">4</span>
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
          ><span class="badge bg-warning rounded-pill">12</span>
        </li>
      </ul>
    </div>
    <hr />

    <!-- Scooters -->

    <p class="pt-2">
      Nombre des
      <span class="fw-bolder"
        ><img class="me-1" src="" alt="" style="width: 30px" /> Scooters : </span
      ><span class="badge rounded-pill bg-danger ms-1">{{ scootersMat.length }}</span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2">
      <ul v-for="scooter in scootersMat" class="list-group" :key="scooter">
        <li
          class="list-group-item list-group-item-action d-flex justify-content-between align-items-center list-group-item-danger mb-1 shadow-sm"
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
          ><span class="badge bg-danger rounded-pill">15</span>
        </li>
      </ul>
    </div>
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
      CommentsDb: {},
      Selected: Math.floor(Math.random() * 11),
      agenca: {},
      agencaList: null,
    };
  },
  methods: {
    calcComments(ddd) {
       const nbComments = this.CommentsDb.filter(sel => sel.camionId == ddd)
      return nbComments.length;

    },

    async getListAgences() {
      const respAg = await axios.get("/api/agences");
      this.agenca = respAg.data;
      console.log(this.agenca);
      const agences = new Map();
      this.agenca.forEach((x) => agences.set(x.id, x.nom));
      console.log(agences);
      this.agencaList = Array.from(agences);
      return console.log(this.agencaList);
    },
  },

  computed: {
    filterMatricule() {

        if(this.Selected == "tous"){

            this.camionsMat = this.base.getCamions;
            this.voituresMat = this.base.getVoitures;
            this.scootersMat = this.base.getScooters;
            this.chariotsMat = this.base.getChariots;
        }

    else{
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
              )); }


      // this.CommentsDb = this.db.comments
    },
    // selectAgence() {
    //   this.camionsMat = this.camionsMat.filter(x=>x.agence_id == this.Selected)

    // },
  },

  async mounted() {
    await this.base.fetchBase();
    //await this.base.getAgencesList();

    this.getListAgences();
    this.filterMatricule;
    //this.selectAgence;
  },
  updated() {
    this.base.fetchBase();
    console.log(this.Selected);
  },
};
</script>
<style></style>
