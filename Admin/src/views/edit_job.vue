<script setup>
import SidebarComponent from '../components/Sidebar.vue';
import HeaderComponent from '../components/Header.vue';
import { useRoute } from 'vue-router';
import router from '@/router';
const route = useRoute();
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
                            <h5 class="card-title fw-semibold mb-4">Edit Job</h5>
                            <router-link class="btn btn-primary" to="/jobs">Show</router-link>
                        </div>

                        <form @submit.prevent="submit">
                            <input type="hidden" name="id" class="_id" :model="id" :value="route.params.id">

                            <div class="row">
                                <div class="col-lg-4 mb-4">
                                    <label class="mb-2">Title</label>
                                    <input type="text" v-model="title" class="form-control">
                                </div>
                                <div class="col-lg-4 mb-4">
                                    <label class="mb-2">Publication</label>
                                    <input type="text" v-model="publication" class="form-control">
                                </div>
                                <div class="col-lg-4 mb-4">
                                    <label class="mb-2">Category</label>
                                    <select name="category_id" v-model="category_id" id="" class="form-select">
                                        <option value="" class="2" disabled>Select</option>
                                        <option v-for="(option, index) in category_data" :key="index"
                                            :value="option.id">
                                            {{ option.name }}
                                        </option>
                                    </select>
                                </div>
                                <div class="col-lg-4 mb-4">
                                    <label class="mb-2">Location</label>
                                    <select name="location_id" id="" v-model="location_id" class="form-select">
                                        <option value="" class="2" disabled>Select</option>
                                        <option v-for="(option, index) in location_data" :key="index"
                                            :value="option.id">
                                            {{ option.name }}
                                        </option>
                                    </select>
                                </div>

                                <div class="col-lg-4 mb-4">
                                    <label class="mb-2">Status</label>
                                    <select name="is_active" v-model="is_active" id="" class="form-select">
                                        <option value="1" class="2">Active</option>
                                        <option value="0" class="2">Inactive</option>
                                    </select>
                                </div>
                                <div class="col-lg-4 mb-4">
                                    <label class="mb-2">Feature</label>
                                    <select name="is_featured" id="" v-model="is_featured" class="form-select">
                                        <option value="1" class="2" selected>Yes</option>
                                        <option value="0" class="2">No</option>
                                    </select>
                                </div>


                                <div class="col-lg-12 mb-4">
                                    <label class="mb-2">Job Description</label>
                                    <textarea name="job_description" v-model="jobDescription" class="form-control"
                                        id="job_description" rows="12"></textarea>
                                    <!-- <Ckeditor v-model="jobDescription"></Ckeditor> -->
                                </div>

                                <div class="col-lg-12 mb-4">
                                    <label class="mb-2">Requirements</label>
                                    <textarea name="requirement" v-model="requirement" class="form-control" id="editor"
                                        rows="12"></textarea>
                                    <!-- <Ckeditor v-model="requirement"></Ckeditor> -->

                                </div>
                                <div class="col-lg-12 mb-4">
                                    <label class="mb-2">Company Profile</label>
                                    <textarea name="company_profile" v-model="company_profile" class="form-control"
                                        id="editor" rows="12"></textarea>
                                    <!-- <Ckeditor v-model="company_profile"></Ckeditor> -->

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
import Ckeditor from '../components/Ckeditor.vue';

import axios from 'axios';
const url = import.meta.env.VITE_APP_ADMIN_API_URL + 'api/jobs/update';
const get_category = import.meta.env.VITE_APP_ADMIN_API_URL + 'api/category/get';
const get_location = import.meta.env.VITE_APP_ADMIN_API_URL + 'api/location/get';
const get_job = import.meta.env.VITE_APP_ADMIN_API_URL + 'api/jobs/get/';
export default {
    components: {
        Ckeditor
    },
    data() {
        return {
            title: '',
            publication: '',
            category_id: '',
            location_id: '',
            is_active: '',
            is_featured: '',
            jobDescription: '',
            requirement: '',
            company_profile: '',
            error: '',
            category_data: [],
            location_data: [],
            id: '',

        };

    },

    mounted() {
        const results = axios.get(get_category, {
            headers: {
                'Content-Type': 'application/json',
                'Authorization': 'lFM0vdsTK2HBwMTEVxjUF4LKCd2c2qS58MAy3hw5bmATF8hOuXPVYLHATiUA9ISV'
            }
        })
            .then((response) => {
                this.category_data = response.data.data;
            })
            .catch((error) => {
                // Handle error
                console.error("Error fetching data:", error);
            });

        const results2 = axios.get(get_location, {
            headers: {
                'Content-Type': 'application/json',
                'Authorization': 'lFM0vdsTK2HBwMTEVxjUF4LKCd2c2qS58MAy3hw5bmATF8hOuXPVYLHATiUA9ISV'
            }
        })
            .then((response) => {
                this.location_data = response.data.data;
            })
            .catch((error) => {
                // Handle error
                console.error("Error fetching data:", error);
            });
        this.fetchCategoryData();

    },
    methods: {

        async submit() {
            console.log(this.jobDescription, " job_description_data");
            const response = await axios.post(url,
                {
                    title: this.title,
                    id: this.id,
                    publication: this.publication,
                    category_id: this.category_id,
                    location_id: this.location_id,
                    is_active: this.is_active,
                    is_featured: this.is_featured,
                    job_description: this.jobDescription,
                    requirement: this.requirement,
                    company_profile: this.company_profile,
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
                this.$router.push('/Jobs');
            } else {
                console.log(response);
                this.error = data.msg;
            }


        },
        fetchCategoryData() {
            // Make API request to fetch data based on id
            axios.get(get_job + $("._id").val(), {
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': 'lFM0vdsTK2HBwMTEVxjUF4LKCd2c2qS58MAy3hw5bmATF8hOuXPVYLHATiUA9ISV'
                }
            }).then(response => {
                this.title = response.data.data.title;
                this.publication =  response.data.data.publication;
                this.category_id =  response.data.data.category_id;
                this.location_id =  response.data.data.location_id;
                this.is_active =  response.data.data.is_active;
                this.is_featured =  response.data.data.is_featured;
                this.jobDescription =  response.data.data.job_description;
                this.requirement =  response.data.data.requirement;
                this.company_profile = response.data.data.company_profile;
                this.id = response.data.data.id;

            })
                .catch(error => {
                    console.error('Error fetching category data:', error);
                });
        },

    }
};


</script>
