<template >

    <!-- <div  v-for="(mat, innerIndex) in cars(agence) " :key="innerIndex"> -->

    <div class="bg-gradient rounded-3 p-1 text-white shadow "
        :class="{ 'bg-success': !toggle, 'bg-warning': toggle, 'bg-danger': vhl.etat === 'EN PANNE' }">
        <h4 @click="toggle = !toggle" class="fw-bold"> {{ vhl.matricule }} </h4>


        <span class="text-dark">{{ vhl.marque }}</span>
        <p class="lead" v-if="toggle">{{ vhl.agence }}</p>
        <p class="lead" v-if="toggle">{{ vhl.intitule }}</p>

        <div class="my-4">

            <router-link :to="{ name: 'vhl-show', params: { id: vhl.id } }" class="btn btn-sm btn-success border border-1">detail</router-link>
            <router-link :to="{ name: 'vhl-edit', params: { id: vhl.id } }" class="btn btn-sm btn-primary m-1">Edit
            </router-link> --->
            <router-link :to="{ name: 'vhl-reclam', params: { id: vhl.id } }" class="btn btn-sm btn-danger ml-2">Reclam
            </router-link>
            <hr>
            <span v-for='vl in vhl.comment' :key="vl">{{ vl.comment }} <br></span>
        </div>
    </div>



</template>


<script>
export default {
    props: ['vhl'],
    data() {
        return {

            toggle: false,
            url: `/api/vhls/${this.vhl.id}`,


        }
    },
    methods: {
        deletePost() {
            fetch(this.url, { method: 'DELETE' })
                .then(() => this.$emit('delete', this.vhl.id))
                .catch(err => console.log(err.message));
        },


         transff(id) {
            this.$emit('katec',this.vhl.id)


    },



}}
</script>

<style>
</style>
