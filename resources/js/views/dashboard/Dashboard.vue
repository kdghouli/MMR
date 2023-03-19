<template>
    <div class="row mt-2">

        <div class="col-2" v-for="(agenca, index) in agences" :key="index">
            <h2 class="fw-bolder" @click="salam">{{ agenca }}</h2>
            <div>
                <cat-dash :vhls='vhls' :agenca='agenca' @evento='affiche' :selek="selek"/>
            </div>
        </div>
    </div>
</template>







<script>
import axios from "axios";
import CatDash from './CatDash.vue';
export default {
    components: { CatDash },
    data() {
        return {
            vhls: [],
            agences: [],
            selek:[]

        };
    },
    computed: {

        agences() {
            const agences = new Set();
            this.vhls.forEach((x) => agences.add(x.agence.nom));
            return Array.from(agences);
        }

    },


    methods: {
        async getBase() {
            console.log("ok");
            await axios.get("/api/dashboard").then((resp) => {
                this.vhls = resp.data.data;

            });

            //console.log(this.vhls);
        },


        affiche(selek){
            console.log(selek.agence)
               return this.selek=selek
        },



    },

    // console.log('ok');

    // const getPosts = async ()=>{

    //     let posts = await axios.get('/api/posts');
    //     console.log(posts.data.data);

    mounted() {
        this.getBase();
        //this.salam();
    },
};
</script>







<style>
.card {
    box-shadow: 0 20px 30px 0 rgb(0 0 0 / 20%);
}

.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0, 0, 0, 0.125);
    border-radius: 0.8rem;
}
.card-header{
    cursor: pointer;
}
.card-header:hover{
    background-color: #e4a8a8 !important;
    border-radius: 0.8rem;
}

.bgc-h-secondary-l3:hover,
.bgc-secondary-l3 {
    background-color: #ebeff1 !important;
}

.h-4 {
    height: 2rem;
}

.w-4 {
    width: 2rem;
}

.d-zoom-1,
.d-zoom-2,
.d-zoom-3,
.dh-zoom-1,
.dh-zoom-2,
.dh-zoom-3 {
    transition: -webkit-transform 180ms;
    transition: transform 180ms;
    transition: transform 180ms, -webkit-transform 180ms;
}

.mr-25,
.mx-25 {
    margin-right: 0.65rem !important;
}

.p-25 {
    padding: 0.65rem !important;
}

.radius-1 {
    border-radius: 0.2rem !important;
}

[class*="bgc-h-"] {
    transition: background-color 0.15s;
}

.text-default-d3 {
    color: #416578 !important;
}

.font-bolder,
.text-600 {
    font-weight: 500 !important;
}

.text-90 {
    font-size: 0.8em !important;
}

.bgc-h-secondary-l4:hover,
.bgc-secondary-l4 {
    background-color: #f2f4f6 !important;
}

.text-danger-m1 {
    color: #da3636 !important;
}

.text-green-m1 {
    color: #2c8d6a !important;
}

.text-95 {
    font-size: 0.8em !important;
}
</style>
