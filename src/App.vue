<template>
  <div class="app">
    <header class="header">
      <nav class="nav-container">
        <div class="logo">
          <router-link to="/">CG</router-link>
        </div>
        <div class="nav-links">
          <router-link to="/">Home</router-link>
          <router-link to="/social">Social</router-link>
          <router-link to="/portfolio">Portfolio</router-link>
          <router-link to="/project-garden">Project Garden</router-link>
          <router-link to="/timeline">Timeline</router-link>
          <router-link to="/articles">Articles</router-link>
          <router-link to="/reading">Reading</router-link>
          <router-link to="/contact">Contact</router-link>
        </div>
      </nav>
    </header>
    <main>
      <router-view />
    </main>
    <footer>
      <p>&copy; {{ currentYear }} Christopher Gulliver. All rights reserved.</p>
    </footer>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      currentYear: new Date().getFullYear()
    }
  }
}
</script>

<style>
/* Global styles will be imported from style.css */
</style>
