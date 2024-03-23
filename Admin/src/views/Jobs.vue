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
                            <h5 class="card-title fw-semibold mb-4">Jobs</h5>
                            <router-link class="btn btn-primary" to="/jobs/add">Add</router-link>
                        </div>

                        <div class="table-responssive mt-4">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Title</th>
                                        <th>Category</th>
                                        <th>Location</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody class="bg-white divide-y divide-gray-200">
                                    <tr v-for="(item) in apiData">
                                        <td class="px-6 py-4 whitespace-no-wrap">
                                            {{ item.id }}</td>
                                        <td class="px-6 py-4 whitespace-no-wrap">
                                            {{ item.title }}</td>
                                        <td class="px-6 py-4 whitespace-no-wrap">
                                            {{ item.category_name }}</td>
                                        <td class="px-6 py-4 whitespace-no-wrap">
                                            {{ item.location_name }}</td>
                                        <td class="px-6 py-4 whitespace-no-wrap">
                                            <label v-if="item.status == 1" class="badge bg-success">Active</label>
                                            <label v-if="item.status == 0" class="badge bg-danger">Inactive</label>


                                        </td>
                                        <td class="px-6 py-4 whitespace-no-wrap">
                                            <router-link class="btn btn-md btn-warning mb-2"
                                                :to="'/jobs/edit/' + item.id">Edit</router-link>
                                            &nbsp;
                                            <button class="btn btn-md btn-danger mb-2" @click="delete_data(item.id)"
                                                data-id="{{ item.id }}">Delete</button>
                                        </td>
                                    </tr>
                                    <!-- More rows... -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>


<script>
import axios from "axios";
const url = import.meta.env.VITE_APP_ADMIN_API_URL + 'api/jobs/get';
const delete_url = import.meta.env.VITE_APP_ADMIN_API_URL + 'api/jobs/delete';

export default {
    data() {
        return {
            apiData: [],
        };
    },
    mounted() {
        axios
            .get(url, {
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': 'lFM0vdsTK2HBwMTEVxjUF4LKCd2c2qS58MAy3hw5bmATF8hOuXPVYLHATiUA9ISV'
                }
            })
            .then((response) => {
                // Handle successful response
                this.apiData = response.data.data;
            })
            .catch((error) => {
                // Handle error
                console.error("Error fetching data:", error);
            });
    },

    methods: {
        delete_data(id) {
            Swal.fire({
                icon: "warning",
                title: "Remove? It will permantly delete.",
                showCancelButton: true,
                confirmButtonText: "Yes",
                denyButtonText: `No`
            }).then((result) => {
                if (result.isConfirmed) {
                    const status = axios.post(delete_url,
                        {
                            id: id,
                        },
                        {
                            headers: {
                                'Content-Type': 'application/json',
                                'Authorization': 'lFM0vdsTK2HBwMTEVxjUF4LKCd2c2qS58MAy3hw5bmATF8hOuXPVYLHATiUA9ISV'
                            }
                        }).then((response) => {
                            const data = response.data;
                            if (data?.status && data?.status === "success") {
                                Swal.fire({
                                    title: data.msg,
                                    icon: "success"
                                });
                            } else {
                                Swal.fire({
                                    title: data.msg,
                                    text: "You clicked the button!",
                                    icon: "error"
                                });

                                this.reloadView();
                            }
                        }).catch((error) => {
                            console.error("Error deleting data:", error);
                            // Handle error, if needed
                        });
                }
            });

        },
    },
};

</script>
