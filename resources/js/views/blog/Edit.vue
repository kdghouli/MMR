<template lang="">

    <div class="row">
        <div class="col-md-12 text-right">
            <router-link to="/blog" class="btn btn-primary">Back to List</router-link>
        </div>
    </div>

 <div class="row my-4">
        <div class="col-md-6 mx-auto">
           <h1 class="my-2">Edit Post</h1>
            <form @submit.prevent="editPost">
                <div class="form-group">
                    <label for="Title">Title</label>
                    <input v-model="post.title" id="Title" type="text" class="form-control">
                </div>
                <div class="form-group">
                    <label for="Content">Content</label>
                    <textarea v-model="post.content" id="Content" rows="3" class="form-control"></textarea>
                </div>
                <button class="btn btn-block btn-warning">Update</button>
            </form>
            
        </div>
    </div>
</template>
<script>
export default {
     props: ['id'],
     data() {
        return {
            url: `http://localhost:5000/posts/${this.id}`,
            post: {
                title: '',
                content: ''
            }
        }
    },
    methods: {

       editPost() {
           if(this.post.title == '' || this.post.content == '') {
               return;
           }
           
            fetch(this.url, {
                method: 'PUT',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(this.post)
            })
            .then(res => res.json())
            .then(data => this.$router.push('/blog'))
            .catch(err => console.log(err.message))

       }

    },
     mounted() {
        
            fetch(this.url)
            .then(res => res.json())
            .then(data => this.post = data)
            .catch(err => console.log(err))

    }
}
</script>
<style lang="">
    
</style>