
<template>


    <div v-for="(categore, index) in categories" :key="index">
        <div class="card radius-t-0 h-100 my-2">
            <div class="position-tl w-102 border-t-3 brc-primary-tp3 ml-n1px mt-n1px"></div>
            <!-- the blue line on top -->

            <div class="card-header pb-3 brc-secondary-l3" @click="salam" @click.prevent="show = !show">
                <h5 class="card-title m-2 mb-md-0 text-dark-m3 fw-bolder">
                    {{ categore }}
                </h5>
            </div>

            <div v-for="vhl in cars(agenca,categore)" :key="vhl.id">
                <div class="card-body pt-2 pb-1" v-if="show">

                <div >

    <div role="button"
        class="d-flex flex-wrap align-items-center my-2 bgc-secondary-l4 bgc-h-secondary-l3 radius-1 p-25 d-style" >
        <span
            class="mr-25 w-4 h-4 overflow-hidden text-center border-1 brc-secondary-m2 radius-round shadow-sm d-zoom-2">
            <img alt="Alexa's avatar" src="" class="h-4 w-4" />
        </span>

        <span class="fw-bold text-primary">
            {{ vhl.matricule  }}
        </span>

        <span class="ml-2 text-dark-l2 text-nowrap" :class="{ 'bg-danger': vhl.etat.id === 2}">
            {{ vhl.equipement || vhl.matricule }}🚚
            <span class="text-80"> </span>
        </span>

        <span class="ml-2">
            <i class="fa fa-arrow-up text-green-m1 text-95"></i>
        </span>
    </div>


</div>


                </div>
            </div>
        </div>
    </div>


</template>





<script>

export default {

    props: ['vhls', 'agenca', 'selek'],
    emits: ['evento'],

    data() {
        return {


            categories: [],
            show: false,
        }
    },

    computed: {

        categories() {
            const categories = new Set();
            this.vhls.forEach((x) => categories.add(x.categorie.nom));
            return Array.from(categories);
        },



    },
    methods: {


        cars(aa, bb) {



            console.log(aa + '-' + bb)
            const vhhh = this.vhls.filter((x) => x.agence.nom === aa);
            return vhhh.filter((y) => y.categorie.nom === bb);



        },
        counterVhl(a){





           return this.vhls.length ;

        },









        salam(categore, agence) {

            categore = event.target.textContent;
            agence = this.agenca;
            console.log(categore + '-' + agence);
            return this.$emit('evento', { agence, categore })
        },

    },
    mounted() {

    }




}














</script>




<style>
</style>
