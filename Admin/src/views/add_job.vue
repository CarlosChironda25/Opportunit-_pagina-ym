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
                            <h5 class="card-title fw-semibold mb-4">Add Job</h5>
                            <router-link class="btn btn-primary" to="/jobs">Show</router-link>
                        </div>

                        <form @submit.prevent="submit">

                            <div class="row">
                                <div class="col-lg-8 mb-4">
                                    <label class="mb-2">Title</label>
                                    <input type="text" v-model="title" class="form-control">
                                </div>
                                <div class="col-lg-4 mb-4">
                                    <label class="mb-2">Category</label>
                                    <select name="" id="" class="form-select">
                                        <option value="" class="2" disabled>Select</option>
                                        <option value="" class="2">Category</option>
                                    </select>
                                </div>
                                <div class="col-lg-4 mb-4">
                                    <label class="mb-2">Location</label>
                                    <select name="" id="" class="form-select">
                                        <option value="" class="2" disabled>Select</option>
                                        <option value="" class="2">Category</option>
                                    </select>
                                </div>

                                <div class="col-lg-4 mb-4">
                                    <label class="mb-2">Status</label>
                                    <select name="" id="" class="form-select">
                                        <option value="1" class="2" selected>Active</option>
                                        <option value="0" class="2">Inactive</option>
                                    </select>
                                </div>
                                <div class="col-lg-4 mb-4">
                                    <label class="mb-2">Feature</label>
                                    <select name="" id="" class="form-select">
                                        <option value="1" class="2" selected>Yes</option>
                                        <option value="0" class="2">No</option>
                                    </select>
                                </div>
                                <div class="col-lg-12 mb-4">
                                    <label class="mb-2">Job Description</label>
                                    <textarea name="editor" id="editor"></textarea>
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

const url = import.meta.env.VITE_APP_ADMIN_API_URL + 'api/category/create';
export default {
    data() {
        return {
            title: '',
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
