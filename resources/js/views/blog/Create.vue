<template lang="">
   
    <div class="row">
        <div class="col-md-12 text-right">
            <router-link to="/blog" class="btn btn-primary">Back to List</router-link>
        </div>
    </div>


    <div class="row my-4">
        <div class="col-md-6 mx-auto">
           <h1 class="my-2">New Post</h1>
            <form @submit.prevent="createPost">
                <div class="form-group">
                    <label for="Title">Title</label>
                    <input v-model="title" id="Title" type="text" class="form-control">
                </div>
                <div class="form-group">
                    <label for="Content">Content</label>
                    <textarea v-model="content" id="Content" rows="3" class="form-control"></textarea>
                </div>
                <button class="btn btn-block btn-success">Add</button>
            </form>
            
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            title: '',
            content: ''
        }
    },
    methods: {
        createPost() {
            
            let post = {
                title: this.title,
                content: this.content
            };

                fetch('http://localhost:5000/posts', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json'},
                    body: JSON.stringify(post)
                })
                .then(() => this.$router.push('/blog'))
                .catch(err => console.log(err.message))

        }
    }
}
</script>
<style lang="">
    
</style>