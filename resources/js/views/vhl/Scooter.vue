<template>
  <h1 class="text-success">SCOOTER</h1>

  <div class="row">

    <!-- component -->
    <div class="col-md-6 col-sd-12 g-1" v-for="vhl in scooters" :key="vhl.id"
      style=" background:linear-gradient(352deg, rgba(137,245,255,1) 11%, rgba(255,241,247,1) 73%)">




      <unVhl :vhl='vhl' />



    </div>

  </div>
</template>

<script>
import unVhl from "./UnVhl.vue"
export default {
  components: { unVhl },
  data() {
    return {

      scooters: []


    }
  },
  methods: {

    async getScooters() {
      await this.axios.get("http://localhost:5000/scooter")
        .then((resp) => {
          this.scooters = resp.data;
        });
      console.log(this.scooters);
    },





  },


  mounted() {
    this.getScooters()
  },




};
</script>

<style>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.5s ease;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>
