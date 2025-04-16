<template>
  <div class="portfolio">
    <page-header 
      title="Portfolio" 
      subtitle="A collection of projects I've worked on throughout my career."
    />
    
    <div class="portfolio-grid grid">
      <div v-for="project in projects" :key="project.id" class="card">
        <img :src="project.image" :alt="project.title" class="card-image">
        <div class="card-content">
          <h3 class="card-title">{{ project.title }}</h3>
          <p class="card-subtitle">{{ project.company }} | {{ project.releaseYear }}</p>
          <p class="card-description">{{ project.description }}</p>
          <div class="card-platforms">
            <span v-for="(platform, index) in project.platforms" :key="index" class="platform-tag">
              {{ platform }}
            </span>
          </div>
          <router-link :to="`/portfolio/${project.id}`" class="btn btn-secondary">View Details</router-link>
        </div>
      </div>
    </div>

    <section class="section" id="impact-log">
      <h2 class="section-title">Impact Log</h2>
      <p class="section-description">A record of successes, metrics, and impact from various projects.</p>
      <div class="placeholder-content">
        <p>This section will be updated with detailed impact metrics and success stories.</p>
      </div>
    </section>
  </div>
</template>

<script>
import { useDataStore } from '../stores';
import PageHeader from '../components/PageHeader.vue';

export default {
  name: 'PortfolioPage',
  components: {
    PageHeader
  },
  data() {
    return {
      projects: []
    }
  },
  async created() {
    const store = useDataStore();
    await store.fetchData();
    this.projects = store.regularProjects;
  }
}
</script>

<style scoped>
.section-description {
  color: var(--text-secondary);
  margin-bottom: 2rem;
  max-width: 800px;
}

.card-platforms {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-bottom: 1rem;
}

.platform-tag {
  background-color: var(--dark-surface-2);
  color: var(--text-secondary);
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  font-size: 0.75rem;
}

.placeholder-content {
  background-color: var(--dark-surface);
  border-radius: 8px;
  padding: 2rem;
  text-align: center;
  color: var(--text-secondary);
  border: 1px dashed var(--primary-light);
}
</style>
