<template>
  <label for="findo"> Find :</label>
  <input type="search" class='form-control w-25 mx-auto' v-model="findo" />

  <table class="table">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">First </th>
        <th scope="col">Last</th>
        <th scope="col">Handle</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="donne in searchingList" :key="donne.id">
        <th scope="row">{{ donne.id }}</th>
        <td>{{ donne.title }}</td>
        <td>{{ donne.body }}</td>
        <td>{{ donne.userId }}</td>
      </tr>
    </tbody>
  </table>
</template>

<script>
export default {

  data() {
    return {
      findo:""
    };
  },

  computed: {

  },



};
</script>

<style>
</style>
