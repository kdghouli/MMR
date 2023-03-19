<template>
    <div class="row">
        <nav-bar class="col" />
    </div>
<div class="row">
        <router-view class="col"/>
</div>
    <div class="row">
        <pooter class="col"/>
    </div>
</template>

<script>
import NavBar from "./components/page/NavBar.vue";
import SideBar from "./components/page/SideBar.vue";
import Pooter from "./components/page/Pooter.vue";

export default {
    name: "App",
    components: {
        NavBar,
        SideBar,
        Pooter,
    },
};
</script>

<style>
#app {
    font-family: Avenir, Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    color: #2c3e50;
    background: linear-gradient(
        165deg,
        rgba(172, 172, 172, 0.8183473218388918) 0%,
        rgba(0, 234, 255, 1) 100%
    );
}
</style>
