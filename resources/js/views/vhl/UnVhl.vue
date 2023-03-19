<template>

    <div class="row">

        <div class="col-md-3" @click="shahid = !shahid">

            <!-- <img src="../../assets/motor.svg" style="max-width:34px;opacity:0.15" class="d-none d-lg-block" /> -->
            <p class="text-success fs-5 fw-bold ">{{ vhl.matricule }}</p>
        </div>


        <div class="d-flex flex-column shadow " :class="{'col-md-5':shahid,'col-md-7':!shahid}">

            <p class="flex-grow-0"><strong>{{ vhl.utilisateur }}</strong> </p>
            <p v-if="shahid">{{ vhl.type }}</p>
            <p v-if="shahid" class=" ">{{ vhl.chassis }}</p>
            <p v-if="shahid" class=" ">Etat: <strong>Bien</strong></p>

        </div>


            <div class="" :class="{'col-md-2':!shahid,'col-md-4':shahid}">
            <p class="badge rounded-pill bg-warning text-dark m-2">{{ vhl.Année }}</p>
            <p v-if="shahid" class=""> Marrakech</p>

        </div>


    </div>






</template>

<script>

export default {
    props: ['vhl'],
    data() {
        return {
            shahid: false,
        }



    },



}
</script>

<style>
</style>
