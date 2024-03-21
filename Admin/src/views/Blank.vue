<script setup>
import SidebarComponent from '../components/Sidebar.vue';
import HeaderComponent from '../components/Header.vue';

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
                        <h5 class="card-title fw-semibold mb-4">Sample Page</h5>
                        <p class="mb-0">This is a sample page </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
