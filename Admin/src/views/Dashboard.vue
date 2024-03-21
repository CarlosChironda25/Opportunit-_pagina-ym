<script setup>
import SidebarComponent from '../components/Sidebar.vue';
import HeaderComponent from '../components/Header.vue';
// import { useCounterStore } from '../stores/auth.js'
// const counter = useCounterStore()
</script>
<template>
    <!--  Body Wrapper -->
    <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="fixed" data-header-position="fixed">
        <!-- Sidebar Start -->
        <SidebarComponent></SidebarComponent>
        <!-- Sidebar End -->
        <!--  Main wrapper -->
        <div class="body-wrapper">
            <!--  Header Start -->
            <HeaderComponent></HeaderComponent>

            <!--  Header End -->
            <div class="container-fluid">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title fw-semibold mb-4">Welcome to admin panel.</h5>
                        <p class="text-info">Please choose a menu from sidebar</p>
                        <!-- <p class="val">{{ counter.is_logged }}</p> -->
                        <!-- <p class="mycls" @click="myclick">CLick me</p> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            // error: ''
        };
    },
    methods: {

        myclick() {
            console.log($(".mycls").text());
        }

    }
};
</script>
