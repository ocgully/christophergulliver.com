<template>
  <div v-if="project" class="project-detail">
    <div class="project-header">
      <router-link to="/portfolio" class="back-link">
        &larr; Back to Portfolio
      </router-link>
      <h1 class="project-title">{{ project.title }}</h1>
      <div class="project-meta">
        <div class="meta-item">
          <span class="meta-label">Company:</span>
          <span class="meta-value">{{ project.company }}</span>
        </div>
        <div class="meta-item">
          <span class="meta-label">Release Year:</span>
          <span class="meta-value">{{ project.releaseYear }}</span>
        </div>
        <div class="meta-item">
          <span class="meta-label">Platforms:</span>
          <span class="meta-value">{{ project.platforms ? project.platforms.join(', ') : 'N/A' }}</span>
        </div>
        <div v-if="project.website" class="meta-item">
          <span class="meta-label">Website:</span>
          <span class="meta-value">
            <a :href="project.website" target="_blank" rel="noopener noreferrer" class="website-link">
              {{ project.website }}
            </a>
          </span>
        </div>
        <div v-if="project.github" class="meta-item">
          <span class="meta-label">GitHub:</span>
          <span class="meta-value">
            <a :href="project.github" target="_blank" rel="noopener noreferrer" class="website-link">
              {{ project.github }}
            </a>
          </span>
        </div>
      </div>
    </div>

    <div class="project-content">
      <div class="project-image-container">
        <img :src="project.image" :alt="project.title" class="project-image">
      </div>
      
      <div class="project-info">
        <section class="project-section">
          <h2 class="section-title">Description</h2>
          <p>{{ project.description }}</p>
        </section>
        
        <section class="project-section">
          <h2 class="section-title">My Contributions</h2>
          <p>{{ project.contributions }}</p>
        </section>
      </div>
    </div>
  </div>
  <div v-else class="loading">
    <p>Loading project details...</p>
  </div>
</template>

<script>
import { useDataStore } from '../stores';

export default {
  name: 'ProjectDetailPage',
  data() {
    return {
      project: null
    }
  },
  async created() {
    const projectId = this.$route.params.id;
    const store = useDataStore();
    await store.fetchData();
    
    // Find the project in the store
    this.project = store.projects.find(p => p.id === projectId);
    
    // Set page title
    if (this.project) {
      document.title = `${this.project.title} | Christopher Gulliver`;
    }
  }
}
</script>

<style scoped>
.project-detail {
  max-width: 1000px;
  margin: 0 auto;
}

.back-link {
  display: inline-block;
  margin-bottom: 1rem;
  color: var(--text-secondary);
  text-decoration: none;
  transition: var(--transition);
}

.back-link:hover {
  color: var(--primary);
}

.project-title {
  font-size: 2.5rem;
  margin-bottom: 1rem;
  background: var(--gradient-1);
  -webkit-background-clip: text;
  background-clip: text;
  -webkit-text-fill-color: transparent;
}

.project-meta {
  display: flex;
  flex-wrap: wrap;
  gap: 1.5rem;
  margin-bottom: 2rem;
}

.meta-item {
  display: flex;
  flex-direction: column;
}

.meta-label {
  font-size: 0.875rem;
  color: var(--text-secondary);
}

.meta-value {
  font-size: 1rem;
  color: var(--text-primary);
  font-weight: 500;
}

.website-link {
  color: var(--primary);
  text-decoration: none;
  transition: var(--transition);
}

.website-link:hover {
  text-decoration: underline;
}

.project-content {
  display: grid;
  grid-template-columns: 1fr;
  gap: 2rem;
}

.project-image-container {
  overflow: hidden;
  border-radius: 12px;
  box-shadow: var(--card-shadow);
}

.project-image {
  width: 100%;
  height: auto;
  object-fit: cover;
}

.project-section {
  margin-bottom: 2rem;
}

.project-section h2 {
  font-size: 1.5rem;
  margin-bottom: 1rem;
  color: var(--primary-light);
}

.project-section p {
  color: var(--text-secondary);
  line-height: 1.6;
}

.loading {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 400px;
  color: var(--text-secondary);
}

@media (min-width: 768px) {
  .project-content {
    grid-template-columns: 1fr 1fr;
  }
}
</style>
