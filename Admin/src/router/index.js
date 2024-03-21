import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/Home.vue'
// import { useCounterStore } from '../stores/auth.js'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      meta: {
        title: 'Home Page'
      },
      component: () => import('../views/Login.vue')
    },
    {
      path: '/about',
      name: 'about',
      meta: {
        title: 'About Page'
      },
      component: () => import('../views/About.vue')
    },
    {
      path: '/login',
      name: 'login',
      meta: {
        title: 'Login Page',
      },
      component: () => import('../views/Login.vue')
    },
    {
      path: '/dashboard',
      name: 'Dashboard',
      meta: {
        title: 'Dashboard',
        requiresAuth: true
      },
      component: () => import('../views/Dashboard.vue')
    },
    {
      path: '/Category',
      name: 'Category',
      meta: {
        title: 'Category',
        requiresAuth: true
      },
      component: () => import('../views/Category.vue')
    },

    {
      path: '/Add_Category',
      name: 'Add_Category',
      meta: {
        title: 'Add Category',
        requiresAuth: true
      },
      component: () => import('../views/add_category.vue')
    },
    {
      path: '/category/edit/:id',
      name: 'Edit_Category',
      meta: {
        title: 'Edit Category',
        requiresAuth: true
      },
      component: () => import('../views/edit_category.vue')
    },

    ,
    {
      path: '/Location',
      name: 'Location',
      meta: {
        title: 'Location',
        requiresAuth: true
      },
      component: () => import('../views/Location.vue')
    },

    {
      path: '/Add_Location',
      name: 'Add_Location',
      meta: {
        title: 'Add Location',
        requiresAuth: true
      },
      component: () => import('../views/add_location.vue')
    },
    {
      path: '/location/edit/:id',
      name: 'Edit_location',
      meta: {
        title: 'Edit Location',
        requiresAuth: true
      },
      component: () => import('../views/edit_location.vue')
    },
    {
      path: '/jobs',
      name: 'Jobs',
      meta: {
        title: 'Jobs',
        requiresAuth: true
      },
      component: () => import('../views/Jobs.vue')
    },
    {
      path: '/jobs/add',
      name: 'Add_Jobs',
      meta: {
        title: 'Add Jobs',
        requiresAuth: true
      },
      component: () => import('../views/add_job.vue')
    },
    {
      path: '/blank',
      name: 'blank',
      meta: {
        title: 'Blank Page'
      },
      component: () => import('../views/Blank.vue')
    }
  ]
})

router.beforeEach((to, from, next) => {
  // const counter = useCounterStore()
  // const isAuthenticated = counter?.is_logged;
  // console.log(isAuthenticated);
  const isAuthenticated = (localStorage.getItem('token')) ?? false;
  const isAuthRequired = to.matched.some(record => record.meta.requiresAuth);
  // console.log(isAuthenticated, 'token');
  // console.log(isAuthRequired, 'meta');

  if ((isAuthenticated === false && isAuthRequired)) {
    console.log('Redirecting to login');
    next('/login');
  } else {
    console.log('Continuing to requested route');
    next();
  }
});

export default router
