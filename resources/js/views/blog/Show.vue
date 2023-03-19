<template lang="">
    <div v-if="post">
        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Iure incidunt harum, dolore sit itaque minima aliquid laboriosam et vitae facere.
       <h1>{{ post.title }}</h1>
       <p>{{ post.content }}</p>
    </div>
    <div v-else class="text-center">Loading ...</div>
</template>
<script>
export default {
    props: ['id', 'slug'],
    data() {
        return {
            post: null
        }
    },
    mounted() {
        
            fetch(`http://localhost:5000/posts/${this.id}`)
            .then(res => res.json())
            .then(data => this.post = data)
            .catch(err => console.log(err))

    }
}
</script>
<style lang="">
    
</style>