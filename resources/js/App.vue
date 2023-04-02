<template>
    <div class="row">
        <nav-bar/>
    </div>
<div class="row">
        <router-view />
</div>
    <div class="row">
        <Footer />
    </div>
</template>

<script>
import NavBar from "./components/page/NavBar.vue";
import SideBar from "./components/page/SideBar.vue";
import Footer from "./components/page/Footer.vue";

export default {
    name: "App",
    components: {
        NavBar,
        SideBar,
        Footer,
    },
};
</script>

<style>

</style>
