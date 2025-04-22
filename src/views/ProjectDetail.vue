<template>
  <div v-if="project" class="project-detail">
    <div class="project-header">
      <router-link :to="backLink" class="back-link">
        &larr; {{ backLinkText }}
      </router-link>
      <h1 class="project-title">{{ project.title }}</h1>
      <div class="project-meta">
        <div class="meta-item">
          <span class="meta-label">Company:</span>
          <span class="meta-value">{{ project.company }}</span>
        </div>
        <div class="meta-item">
          <span class="meta-label">Year:</span>
          <span class="meta-value">{{ project.timeframe }}</span>
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
      <!-- Use ImageCarousel if gallery exists, otherwise show single image -->
      <div v-if="hasGallery" class="project-gallery-container">
        <image-carousel :images="projectImages"></image-carousel>
      </div>
      <div v-else class="project-image-container">
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

        <section v-if="project.details && project.details.features" class="project-section">
          <h2 class="section-title">Key Features</h2>
          <ul class="feature-list">
            <li v-for="(feature, index) in project.details.features" :key="index">{{ feature }}</li>
          </ul>
        </section>

        <section v-if="project.details && project.details.technologies" class="project-section">
          <h2 class="section-title">Technologies</h2>
          <div class="tech-tags">
            <span v-for="(tech, index) in project.details.technologies" :key="index" class="tech-tag">{{ tech }}</span>
          </div>
        </section>

        <section v-if="project.details && project.details.alternateNames" class="project-section">
          <h2 class="section-title">Also Known As</h2>
          <p>{{ project.details.alternateNames.join(', ') }}</p>
        </section>

        <section v-if="project.reason" class="project-section">
          <h2 class="section-title">Project Status</h2>
          <div class="status-box graveyard">
            <h3>Project Discontinued</h3>
            <p>{{ project.reason }}</p>
          </div>
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
import ImageCarousel from '../components/ImageCarousel.vue';

export default {
  name: 'ProjectDetailPage',
  components: {
    ImageCarousel
  },
  data() {
    return {
      project: null
    }
  },
  computed: {
    hasGallery() {
      return this.project && this.project.gallery && this.project.gallery.length > 0;
    },
    projectImages() {
      if (this.hasGallery) {
        return this.project.gallery;
      } else if (this.project && this.project.image) {
        // If no gallery but has a single image, create a gallery with one item
        return [{ image: this.project.image, caption: this.project.title }];
      }
      return [];
    },
    backLink() {
      return this.$route.query.from === 'garden' ? '/garden' : '/portfolio';
    },
    backLinkText() {
      return this.$route.query.from === 'garden' ? 'Back to Project Garden' : 'Back to Portfolio';
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

.project-gallery-container {
  margin-bottom: 2rem;
}

.feature-list {
  list-style: none;
  padding: 0;
  margin: 0;
}

.feature-list li {
  font-size: 1rem;
  color: var(--text-primary);
  margin-bottom: 0.5rem;
}

.tech-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.tech-tag {
  font-size: 0.875rem;
  color: var(--text-secondary);
  background-color: var(--primary-light);
  padding: 0.25rem 0.5rem;
  border-radius: 12px;
}

.status-box {
  padding: 1rem;
  border-radius: 12px;
  margin-top: 1rem;
}

.status-box h3 {
  font-size: 1.25rem;
  margin-bottom: 0.5rem;
  color: var(--text-primary);
}

.status-box p {
  font-size: 1rem;
  color: var(--text-secondary);
}

.status-box.graveyard {
  background-color: rgba(220, 53, 69, 0.1);
  border-left: 4px solid #dc3545;
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
