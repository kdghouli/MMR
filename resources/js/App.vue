<template>
    <div class="row">
        <nav-bar />
    </div>

    <div class="row">
        <router-view v-slot="{ Component }">
            <transition name="fade">
                <component :is="Component" />
            </transition>
        </router-view>
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
.fade-enter-active,
.fade-leave-active {
    transition: opacity 0.5s;
}
.fade-enter,
.fade-leave-active {
    opacity: 0;
}
</style>
