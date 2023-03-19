<template lang="">
   <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <router-link class="nav-link" :to="{name: 'Home'}">Home
          <span class="sr-only">(current)</span>
        </router-link>
      </li>
      <li class="nav-item">
        <router-link class="nav-link" :to="{name: 'Blog'}">Blog</router-link>
      </li>
      <li class="nav-item">
        <router-link class="nav-link" :to="{name: 'About'}">About</router-link>
      </li>
    
    </ul>
   
  </div>
</nav>

  <div class="my-3">
    <button @click="previous" class="btn btn-danger">Previous</button>
    <button @click="redirect" class="btn btn-success ml-2">Redirect</button>
    <button @click="next" class="btn btn-info ml-2">Next</button>
  </div>

</template>
<script>
export default {
   methods: {
     previous() {
      this.$router.go(-1);
     },
     next() {
       this.$router.go(1);
     },
     redirect() {
       this.$router.push('/');
     },
   }
}
</script>
<style>

.router-link-active {
  color: black !important;
  background-color: blanchedalmond;
  padding: 6px;
}
  
</style>