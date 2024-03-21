<template>
    <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="fixed" data-header-position="fixed">
        <div
            class="position-relative overflow-hidden radial-gradient min-vh-100 d-flex align-items-center justify-content-center">
            <div class="d-flex align-items-center justify-content-center w-100">
                <div class="row justify-content-center w-100">
                    <div class="col-md-8 col-lg-6 col-xxl-3">
                        <div class="card mb-0">
                            <div class="card-body">
                                <a href="javascript:void(0)"
                                    class="text-nowrap logo-img text-center d-block py-3 w-100">
                                    <img src="/assets/images/logos/dark-logo.svg" width="180" alt="">
                                </a>
                                <!-- <p class="text-center">Your Social Campaigns</p> -->
                                <p v-if="error" class="error text-danger h5 text-center">{{ error }}</p>

                                <form @submit.prevent="login">
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Username</label>
                                        <input type="text" class="form-control" v-model="username" required
                                            id="exampleInputEmail1" aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-4">
                                        <label for="exampleInputPassword1" class="form-label">Password</label>
                                        <input type="password" class="form-control" v-model="password" required
                                            id="exampleInputPassword1">
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between mb-4">
                                        <div class="form-check">
                                            <input class="form-check-input primary" type="checkbox" value=""
                                                id="flexCheckChecked" checked>
                                            <label class="form-check-label text-dark" for="flexCheckChecked">
                                                Remeber this Device
                                            </label>
                                        </div>
                                        <!-- <a class="text-primary fw-bold" href="./index.html">Forgot Password ?</a> -->
                                    </div>
                                    <button class="btn btn-primary w-100 py-8 fs-4 mb-4 rounded-2" type="
                                        submit">Login</button>

                                    <!-- <router-link to="/Dashboard"
                                        class="btn btn-primary w-100 py-8 fs-4 mb-4 rounded-2">Sign</router-link> -->

                                    <!-- <div class="d-flex align-items-center justify-content-center">
                                        <p class="fs-4 mb-0 fw-bold">New to Modernize?</p>
                                        <a class="text-primary fw-bold ms-2"
                                            href="./authentication-register.html">Create an account</a>
                                    </div> -->

                                    <!-- <p class="val">{{ counter?.is_logged }}</p> -->
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios';

const url = import.meta.env.VITE_APP_ADMIN_API_URL + 'api/admin/login';
import { useCounterStore } from '../stores/auth.js'
const counter = useCounterStore()
export default {
    data() {
        return {
            username: '',
            password: '',
            error: ''
        };
    },
    methods: {

        async login() {
            const response = await axios.post(url,
                {
                    username: this.username,
                    password: this.password
                },
                {
                    headers: {
                        'Content-Type': 'application/json',
                        'Authorization': 'lFM0vdsTK2HBwMTEVxjUF4LKCd2c2qS58MAy3hw5bmATF8hOuXPVYLHATiUA9ISV'
                    }
                }
            );

            // console.log(import.meta.env.VITE_APP_ADMIN_API_URL);
            const data = response?.data;
            if (data && data?.status == "success") {

                // counter.is_logged_in();
                // counter.user_data = response.token;
                const token = data.token;
                localStorage.setItem('token', token);
                this.$router.push('/dashboard');
            } else {
                console.log(response);
                this.error = "Invalid Credientials!!!";
            }


        }
    }
};


</script>

<style scoped>
.error {
    color: red;
}
</style>
