require('./bootstrap');

import "bootstrap" ;


//Vue 3

import{createApp} from "vue";
import { createPinia } from 'pinia';
import router from "./router";
import store from './store';
import App from './App.vue';
//import PostIndex from "./components/PostIndex.vue";

//Axios
import axios from 'axios';
import VueAxios from 'vue-axios';


createApp(App)
.use(router)
.use(createPinia())
.use(VueAxios, axios)
.mount('#app');

// end Vue 3
