<template>
    <div class="row">
        <nav-bar class="col" />
    </div>
<div class="row">
        <router-view class="col"/>
</div>
    <div class="row">
        <Footer class="col"/>
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
