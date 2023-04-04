<template>







    Reclamation = {{ id }} <br>




    <form @submit.prevent="createComment()">
        <div class="row">
            <div class="col-6">
                <div class="mb-3">
                    <label for="inputEmail" class="form-label">Matricule</label>
                    <input type="text" class="form-control" id="inputEmail" aria-describedby="emailHelp"
                        v-model="camion.Matricule">

                </div>
            </div>
            <div class="col-6">
                <div class="mb-3">
                    <label for="inputEmail" class="form-label">Status</label>
                    <select class="form-select" aria-label="Exemple select" v-model="camion.etat">
                        <option value="Rien à signler" selected>Rien à signler</option>
                        <option value="EN PANNE">EN PANNE</option>
                        <option value="Pb des papiers">Pb des papiers</option>
                        <option value="Autre">Autre</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="col-6">
            <div class="mb-3 form-check form-switch">
                <input class="form-check-input" type="checkbox" id="switch" v-model="active">
                <label class="form-check-label" for="switch">Activer l'alerte</label>
            </div>
        </div>
        <div class="mb-3">
            <label for="commentaire">Commentaire</label>
            <textarea class="form-control" placeholder="Laissez-nous un commentaire !" id="commentaire"
                style="height: 100px" v-model="comment"></textarea>
        </div>





        <button class="btn btn-primary">Enregistrer</button>
    </form>

</template>





<script>
export default {
    props: ['id'],
    data() {
        return {
            url: `http://localhost:5000/camion/${this.id}`,
            camion: {
            matricule: '',
                marque: '',
                agenceId: '',
                etat: ''
            },
            comment: '',
            active: true,
            now: new Date(),

        }
    },
    methods: {
        createComment() {

            let comment = {
                camionId: this.id,
                comment: this.comment,
                time: this.now.toUTCString(),
                active: this.active
            };

            fetch('http://localhost:5000/comment', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(comment)
            })



            fetch(this.url, {
                method: 'PUT',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(this.camion)
            })
                .then(res => res.json())
                .then(data => this.$router.push('/camion'))
                .catch(err => console.log(err.message))







        }


    },
    mounted() {

        fetch(this.url)
            .then(res => res.json())
            .then(data => this.camion = data)
            .catch(err => console.log(err))

    }

}
</script>

