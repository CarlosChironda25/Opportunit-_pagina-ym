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
                        <div class="d-flex justify-content-between">
                            <h5 class="card-title fw-semibold mb-4">Add Category</h5>
                            <router-link class="btn btn-primary" to="/category">Show</router-link>
                        </div>

                        <form @submit.prevent="submit">

                            <div class="row">
                                <label for="">Category Name</label>
                                <div class="col-lg-4 mt-2"><input type="text" v-model="category" class="form-control">
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-lg-3"><button type="submit"
                                        class="btn-success btn btn-md">Submit</button></div>
                                <p v-if="error" class="error text-danger mt-4">Error: {{ error }}</p>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>


<script>
import axios from 'axios';
import { shallowReadonly } from 'vue';

const url = import.meta.env.VITE_APP_ADMIN_API_URL + 'api/category/create';
export default {
    data() {
        return {
            category: '',
            error: ''
        };
    },
    methods: {

        async submit() {
            const response = await axios.post(url,
                {
                    name: this.category,
                },
                {
                    headers: {
                        'Content-Type': 'application/json',
                        'Authorization': 'lFM0vdsTK2HBwMTEVxjUF4LKCd2c2qS58MAy3hw5bmATF8hOuXPVYLHATiUA9ISV'
                    }
                }
            );

            const data = response?.data;
            if (data && data?.status == "success") {
                Swal.fire({
                    title: data.msg,
                    icon: "success"
                });
                this.$router.push('/Category');
            } else {
                console.log(response);
                this.error = data.msg;
            }


        }
    }
};


</script>
