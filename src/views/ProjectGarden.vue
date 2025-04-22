<template>
  <div class="project-garden">
    <page-header 
      title="Project Garden" 
      subtitle="A space where ideas grow, projects evolve, and some eventually fade away."
    />
    
    <!-- Active Projects Section -->
    <section class="section">
      <h2 class="section-title">Growing</h2>
      <h3 class="section-subtitle">Active Projects</h3>
      <div class="kanban-board">
        <div v-for="project in gardenProjects.active" :key="project.id" class="kanban-card">
          <div class="kanban-card-header">
            <h3 class="kanban-card-title">{{ project.title }}</h3>
            <div class="kanban-card-platforms" v-if="project.platforms && project.platforms.length">
              <span v-for="(platform, index) in project.platforms" :key="index" class="platform-tag">
                {{ platform }}
              </span>
            </div>
            <span class="status-badge">{{ project.status }}</span>
          </div>
          <p class="kanban-card-date">{{ project.timeframe }}</p>
          <p class="kanban-card-description">{{ project.description }}</p>
          <div class="kanban-card-actions">
            <router-link :to="`/portfolio/${project.id}?from=garden`" class="btn btn-small">View Details</router-link>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Musings / Ideas Section -->
    <section class="section">
      <h2 class="section-title">Seeds</h2>
      <h3 class="section-subtitle">Musings & Ideas</h3>
      <div class="kanban-board">
        <div v-for="idea in gardenProjects.ideas" :key="idea.id" class="kanban-card">
          <div class="kanban-card-header">
            <h3 class="kanban-card-title">{{ idea.title }}</h3>
            <div class="kanban-card-platforms" v-if="idea.platforms && idea.platforms.length">
              <span v-for="(platform, index) in idea.platforms" :key="index" class="platform-tag">
                {{ platform }}
              </span>
            </div>
          </div>
          <p class="kanban-card-date">{{ idea.timeframe }}</p>
          <p class="kanban-card-description">{{ idea.description }}</p>
          <div class="kanban-card-actions">
            <router-link :to="`/portfolio/${idea.id}?from=garden`" class="btn btn-small">View Details</router-link>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Project Graveyard Section -->
    <section class="section">
      <h2 class="section-title">Graveyard</h2>
      <h3 class="section-subtitle">Killed Projects</h3>
      <div class="kanban-board">
        <div v-for="project in gardenProjects.graveyard" :key="project.id" class="kanban-card graveyard-card">
          <div class="kanban-card-header">
            <h3 class="kanban-card-title">{{ project.title }}</h3>
            <div class="kanban-card-platforms" v-if="project.platforms && project.platforms.length">
              <span v-for="(platform, index) in project.platforms" :key="index" class="platform-tag">
                {{ platform }}
              </span>
            </div>
          </div>
          <p class="kanban-card-date">{{ project.timeframe }}</p>
          <p class="kanban-card-description">{{ project.description }}</p>
          <div class="kanban-card-reason">
            <span class="reason-label">Reason:</span>
            <span class="reason-text">{{ project.reason }}</span>
          </div>
          <div class="kanban-card-actions">
            <router-link :to="`/portfolio/${project.id}?from=garden`" class="btn btn-small">View Details</router-link>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
import { useDataStore } from '../stores';
import PageHeader from '../components/PageHeader.vue';

export default {
  name: 'ProjectGardenPage',
  components: {
    PageHeader
  },
  data() {
    return {
      gardenProjects: {
        active: [],
        ideas: [],
        graveyard: []
      }
    }
  },
  methods: {
    formatDate(dateString) {
      if (!dateString) return 'N/A';
      const options = { year: 'numeric', month: 'short', day: 'numeric' };
      return new Date(dateString).toLocaleDateString(undefined, options);
    }
  },
  async created() {
    const store = useDataStore();
    await store.fetchData();
    this.gardenProjects = store.gardenProjects;
  }
}
</script>

<style scoped>
.section-title {
  font-size: 2rem;
  color: var(--primary);
  margin-bottom: 0.5rem;
}

.section-subtitle {
  font-size: 1.2rem;
  color: var(--text-secondary);
  margin-bottom: 1.5rem;
  font-weight: normal;
  font-style: italic;
}

.section-description {
  color: var(--text-secondary);
  margin-bottom: 2rem;
  max-width: 800px;
}

.kanban-board {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 1.5rem;
  margin-bottom: 3rem;
}

.kanban-card {
  background-color: var(--dark-surface);
  border-radius: 12px;
  padding: 1.5rem;
  margin-bottom: 1rem;
  box-shadow: var(--card-shadow);
  display: flex;
  flex-direction: column;
  position: relative;
  height: 100%;
}

.kanban-card-header {
  margin-bottom: 1rem;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: flex-start;
}

.kanban-card-title {
  font-size: 1.25rem;
  margin-bottom: 0.5rem;
  color: var(--primary);
  flex: 1;
}

.kanban-card-platforms {
  display: flex;
  flex-wrap: wrap;
  gap: 0.25rem;
  justify-content: flex-end;
  margin-left: auto;
}

.platform-tag {
  background-color: var(--dark-surface-2);
  color: var(--text-secondary);
  padding: 0.25rem 0.75rem 0.25rem 0.75rem;
  border-radius: 4px;
  font-size: 0.75rem;
  font-weight: 600;
}

.status-badge {
  background-color: var(--primary-dark);
  color: var(--text-light);
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  font-size: 0.75rem;
  font-weight: 600;
  margin-top: 0.5rem;
  display: block;
  width: fit-content;
}

.kanban-card-date {
  font-size: 0.875rem;
  color: var(--text-secondary);
  margin-bottom: 0.5rem;
}

.kanban-card-description {
  font-size: 1rem;
  color: var(--text-primary);
  line-height: 1.5;
  margin-bottom: 1rem;
  flex-grow: 1;
}

.kanban-card-reason {
  margin-bottom: 1rem;
  padding: 0.75rem;
  background-color: rgba(220, 53, 69, 0.1);
  border-radius: 8px;
  font-size: 0.875rem;
}

.reason-label {
  font-weight: 600;
  color: var(--text-primary);
  margin-right: 0.5rem;
}

.reason-text {
  color: var(--text-secondary);
}

.kanban-card-actions {
  display: flex;
  justify-content: flex-end;
  margin-top: auto;
}

.btn-small {
  font-size: 0.875rem;
  padding: 0.375rem 0.75rem;
  background-color: var(--primary);
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  text-decoration: none;
  transition: background-color 0.3s ease;
}

.btn-small:hover {
  background-color: var(--primary-dark);
}

.graveyard-card {
  border-left: 4px solid #dc3545;
}
</style>
