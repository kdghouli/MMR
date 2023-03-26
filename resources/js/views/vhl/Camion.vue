<template>
    <div class="row">
        <div class="col">
            <div class="text-right">
                <img src="../vhl/camionfleet.png" alt="" width="70" />
                <h1>Camion distribution</h1>
                <router-link to="/new" class="btn btn-primary float-md-end">New</router-link>
            </div>

            <div class="row" v-for="(agence, index) in agences" :key="index">
                <h3 class="my=3" v-if="conta(agenca[index].id)">
                    {{ agence }} -- {{ conta(agenca[index].id) }}
                </h3>

                <div class="col-4 p-2 bg-primary" v-for="vhl in cars(agenca[index].id)" :key="vhl.id">
                    <OneVhl :vhl="vhl" @katec="showFind($event)" />
                </div>
            </div>
        </div>

        <div class="col-3">
            <show :id="id" />
        </div>
    </div>
</template>

<script>
import OneVhl from "./OneVhl.vue";
import Show from "./Show.vue";
export default {
    emits: ["katec"],
    components: { OneVhl, Show },
    data() {
        return {
            toggleAgence: false,
            camions: [],
            agenca: [],
            id: "",
        };
    },
    mounted() {
        this.getDonne();
        //this.getAgence();
    },
    computed: {
        agences() {
            const agences = new Set();
            this.agenca.forEach((x) => agences.add(x.agence));
            return Array.from(agences);
        },
    },

    methods: {
        async getDonne() {
            await this.axios.get("/api/vhls").then((resp) => {
                this.camions = resp.data;
            });
            console.log(this.camions);
        },

        cars(agence) {
            return this.camions.filter((x) => x.agenceId == agence);
        },

        // async getAgence() {
        //   await this.axios.get("http://localhost:5000/agence")
        //     .then((resp) => {
        //       this.agenca = resp.data;
        //     });
        //   console.log(this.agenca);
        // },
        // conta(bb) {
        //   return Object.keys(this.camions.filter(x => x.agenceId == bb)).length

        // },
        // showFind(id) {
        //   return this.id = id
        // }
    },
};
</script>
