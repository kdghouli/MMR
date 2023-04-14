<template>






  <div class="my-1 bg-primary-50 bg-gradient shadow p-1 border border-1 rounded">
    <h3 class="p-2 fw-semibold border border-danger text-center shadow-sm rounded">
      Fiche de Véhicule Immatriculé :
      <span class="text-black fw-bolder shadow-sm p-1">{{ vhl[0].matricule }}</span>
      <span
        ><button
          class="btn btn-primary btn-sm float-end text-warning m-1"
          type="button"
          data-bs-toggle="modal"
          data-bs-target="#staticBackdrop"
        >
          Réclamation
        </button></span
      >
    </h3>
     <!-- use the modal component, pass in the prop -->
     <UpdateVhlModal :show="showModal" @close="showModal = false" :vhlo=vhl_id :vhl=vhl >

    </UpdateVhlModal>
    <div v-for="vhlo in vhl" :key="vhlo">
      <div class="p-1 bg-primary border border-1 rounded">
        <h4 class="text-white p-1 text-center border border-2 rounded">
          {{ vhlo.categorie.nom }} à
          {{ vhlo.agence.nom }}
          <button
            type="button"
            class="btn btn-outline-warning my-auto btn-sm float-end align-items-center"
             id="show-modal" @click="showModal = true"
          >
            Edit
          </button>
        </h4>

        <div class="row justify-content-evenly">
          <!-- card tech -->
          <div
            class="col-5 techCard bg-light bg-gradient rounded p-2 border border-2 shadow-sm"
          >
            <p class="text-center fw-bolder text-dark fs-5 text-light border-bottom">
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
            <p>
              utilisé par :<span class="fw-bold p-1 mx-2">{{ vhlo.utilisateur }}</span>
            </p>
          </div>
          <!-- card Historique -->
          <div
            class="col-5 techCard bg-light bg-gradient rounded p-2 border border-2 shadow-sm">
            <p class="text-center fw-bolder text-dark fs-5 text-light border-bottom">
              Historique
            </p>
            <ul class="list-group" v-for="com in vhlo.comment">
              <li class="list-group-item d-flex justify-content-between align-items-center">
                {{ com.comment }}
                <span class="badge bg-primary rounded-pill ">{{ getHumanDate(com.created_at)  }}</span>
              </li>

            </ul>
          </div>
        </div>

        <!-- Modal -->
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
                <h5 class="modal-title" id="staticBackdropLabel">
                  Réclamation sur :
                  <span class="fw-bold text-bg-light p-1"
                    >{{ vhlo.marque }} {{ vhlo.matricule }}</span
                  >
                </h5>
                <button
                  type="button"
                  class="btn-close"
                  data-bs-dismiss="modal"
                  aria-label="Close"
                ></button>
              </div>
              <div class="modal-body">
                <form @submit.prevent="createComment()">
                  <input type="hidden" name="" v-model="vhl_id" />
                  <div class="row">
                    <div class="col mb-3">
                      <label for="inputEmail" class="form-label fw-bolder">Etat</label>

                      <select
                        class="form-select fs-5"
                        aria-label="Default select example"
                        v-model="statu_id"
                      >
                        <option
                          v-for="statu in statusList"
                          :key="statu"
                          :value="statu[0]"
                        >
                          {{ statu[1] }}
                        </option>
                      </select>
                    </div>
                  </div>
                  <div class="col-6">
                    <div class="mb-3 form-check form-switch">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        id="switch"
                        v-model="active"
                      />
                      <label class="form-check-label" for="switch"
                        >Activer l'alerte
                      </label>
                    </div>
                  </div>
                  <div class="mb-3">
                    <label class="pb-1 form-label fw-bolder" for="commentaire"
                      >Commentaire</label
                    >
                    <textarea
                      class="form-control"
                      placeholder="Laissez-nous un commentaire !"
                      id="commentaire"
                      style="height: 200px"
                      v-model="comment"
                    ></textarea>
                  </div>

                  <div class="modal-footer">
                    <button
                      type="button"
                      class="btn btn-secondary"
                      data-bs-dismiss="modal"
                    >
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
            <!-- fin modal -->



        <!-- <p v-for="comment in comments" :key="comment.index">Type : {{ comment.comment }}</p> -->

        <!-- <router-link class="btn btn-warning float-end" :to="{name:'EditCamionView',params:{id:$route.params.id}}"> modifier </router-link> -->
        <!-- <button class="btn btn-danger me-2" @click="componentComment=!componentComment"> + Commentaire </button> -->
        <div class="row m-2 bg-light bg-gradient" v-if="vhlo.comment.length">
          <div v-for="commo in vhlo.comment">
            <!-- CommentsVhl -->

            <div class="card my-1" style="max-width: 940px">
              <div class="row g-0">
                <div class="col align-self-center ">
                  <img src="\images\discuter.png" class="img-fluid rounded ms-5" alt="..." style="width: 100px;" />
                </div>
                <div class="col-md-9">
                  <div class="card-body">
                    <h5 class="card-title">{{ statusList[commo.statu_id]}}</h5>
                    <p class="card-text">
                        {{ commo.comment }}
                    </p>
                    <p class="card-text">
                      <small class="text-muted">{{ getHumanDate(commo.created_at) }}</small>
                    </p>
                  </div>
                </div>
              </div>
            </div>

            <!-- fin CommentsVhl -->
          </div>
        </div>

        <!-- <CreateCommentView :vhl="vhl" @closing="componentComment=false"/> -->
      </div>
    </div>
  </div>
</template>

<script>
import CommentsVhl from "./CommentsVhl";
import UpdateVhlModal from "./UpdateVhlModal";
import { useBasesStore } from "../../store/bases.js";
import moment from 'moment';

//import commentVhl from "./../../commentVhl.vue";

export default {
  components: {
    CommentsVhl,UpdateVhlModal
  },

  data() {
    return {
      base: useBasesStore(),
      agenceName: "",
      comments: {},
      comment: "",
      nbComments: "",
      componentComment: false,
      statusList: useBasesStore().optionStatus,
      statu_id: "",
      vhl_id: "",
      now: new Date(),
      active: false,
      showModal: false
    };
  },
  computed: {
    vhl() {
      return (this.vhl = this.base.base.filter((x) => x.id == this.$route.params.id));
    },

    // getListStatus() {
    //   console.log("getListStatus");
    //   this.vhl_id = this.$route.params.id;
    //   const lista = new Map();
    //   this.base.status.forEach((x) => lista.set(x.id, x.etat));
    //   this.statusList = Array.from(lista);
    //   return console.log(this.statusList);
    // },
  },

  methods: {
    createComment() {
      let comment = {
        vhl_id: this.vhl_id,
        comment: this.comment,
        active: this.active,
        statu_id: this.statu_id,
      };
      console.log(comment);
      comment = this;
      axios
        .post("/api/comment/create/", { ...comment })
        .then((res) => {
          console.log(res);
        })
        .then(() =>
          this.$router.push({
            name: "OneVhlView",
            params: { id: this.vhl_id },
          })
        );


      //   fetch(this.url, {
      //     method: "PUT",
      //     headers: { "Content-Type": "application/json" },
      //     body: JSON.stringify(this.camion),
      //   })
      //     .then((res) => res.json())
      //     .then((data) => this.$router.push("/camion"))
      //     .catch((err) => console.log(err.message));
      // },
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
    getHumanDate (date) {
                //return moment(date, 'YYYY-MM-DD').format('DD/MM/YYYY')
                return moment(date).locale('fr').startOf('day').fromNow();
            }
  },
 async mounted() {
    this.getListStatus;
   // await this.base.fetchBase();
   this.vhl_id = this.$route.params.id;
  },
};
</script>

<style></style>
