<script setup>
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
  <RouterView />
</template>

<script>
export default {
  name: 'App',
  watch: {
    '$route'() {
      // Access the current route from $route
      const currentRoute = this.$route;
      // Update document title based on the route meta field
      document.title = currentRoute.meta.title || 'Default Title';
    }
  }
}


</script>
