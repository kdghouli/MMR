import { createRouter, createWebHistory } from "vue-router";
import Main from "../views/Main.vue";
import Camion from "../views/vhl/Camion.vue";
import Voiture from "../views/vhl/Voiture.vue";
import Scooter from "../views/vhl/Scooter.vue";
import Chariot from "../views/vhl/Chariot.vue";
import Creation from "../views/vhl/Creation.vue";
import Show from "../views/vhl/Show.vue";
import Edit from "../views/vhl/Update.vue";
import Reclam from "../views/vhl/Reclamation.vue";
import Dashboard from "../views/dashboard/Dashboard.vue";
import CamionView from "../views/vhl/CamionView.vue";

const routes = [
    {
        path: "/",
        name: "main",
        component: Main,
    },
    {
        path: "/dashboard",
        name: "dashboard",
        component: Dashboard,
    },
    {
        path: "/camions",
        name: "camion",
        component: Camion,
    },
    {
        path: "/voitures",
        name: "voiture",
        component: Voiture,
    },
    {
        path: "/scooters",
        name: "scooter",
        component: Scooter,
    },
    {
        path: "/chariots",
        name: "chariot",
        component: Chariot,
    },
    {
        path: "/new",
        component: Creation,
    },
    {
        path: "/camion/:id",
        name: "vhl-show",
        component: Show,
        props: true,
    },

    {
        path: "/camions/:id",
        name: "CamionView",
        component: CamionView,
    },

    {
        path: "/edit/:id",
        name: "vhl-edit",
        component: Edit,
        props: true,
    },
    {
        path: "/reclam/:id",
        name: "vhl-reclam",
        component: Reclam,
        props: true,
    },
];

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes,
});

export default router;
