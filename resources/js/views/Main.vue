<template>
    <h1>dghouli abderrahman</h1>

  <table-main  />
</template>

<script>
import TableMain from "../components/TableMain.vue";


export default {
  name: "home",
  data() {
    return {

    };
  },
  components: {
    TableMain,
  },

  mounted() {
    // this.$store.dispatch('getDonnees');
    // this.$store.dispatch('getCamions');

  },
}
</script>
