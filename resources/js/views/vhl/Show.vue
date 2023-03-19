<template >

<div v-if="vhl" class="border bg-dark border-success text-danger p-2">
        {{ id }}
        
        
         

            <h1>{{ vhl.Matricule }}</h1>
            <p>{{ vhl.Matricule }}</p>
               Lorem ipsum dolor sit, amet consectetur adipisicing elit. Iure incidunt harum, dolore sit itaque minima
            aliquid laboriosam et vitae facere.
        </div>
</template>
<script>
export default {
    props: ['id'],

    data() {
        return {
            vhl: null
        }

    },

    computed: {
       


        

        async getoDonne() {

            console.log('updating')
            await this.axios.get(`http://localhost:5000/camion/${this.id}`).then((resp) => {
                this.vhl = resp.data;
            });
            console.log(this.vhl);
        },




    },

   updated() {
    
    this.getoDonne
},

    }



    // updated(){

    //     console.log('updated')

    // fetch(`http://localhost:5000/camion/${this.id}`)
    // .then(res => res.json())
    // .then(data => this.vhl = data)
    // .catch(err => console.log(err))

    // },










</script>
<style lang="">
    
</style>