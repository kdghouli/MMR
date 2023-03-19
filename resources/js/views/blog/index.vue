<template lang="">
    
    <div class="row">
        <div class="col-md-12 text-right">
            <router-link to="/new" class="btn btn-primary">New</router-link>
        </div>
    </div>

    <div class="row" v-if="posts.length">
        <div class="col-md-12 my-4" v-for="post in posts">
           <OnePost :post="post" @delete="handleDelete"/>
        </div>
    </div> 

</template>
<script>
    import OnePost from './OnePost'
export default {
    components: { OnePost },
    data() {
        return {
           posts: []   
        }
    },
    mounted() {
        fetch('http://localhost:5000/posts')
          .then(res => res.json())
          .then(data => this.posts = data)
          .catch(err => console.log(err))
    },
    methods: {
        handleDelete(id) {
            this.posts = this.posts.filter(post => post.id !== id);
        }
    }
}
</script>
<style lang="">
    
</style>