<template>
  Hello Khalid
</template>

<script>

import axios from 'axios';

export default {

    setup(){


        console.log('ok');

        const getPosts = async ()=>{

            let posts = await axios.get('/api/posts');
            console.log(posts.data.data);

        }
            getPosts();

    }


}
</script>

<style>

</style>
