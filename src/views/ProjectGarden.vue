<template>
  <div class="project-garden">
    <page-header 
      title="Project Garden" 
      subtitle="A space where ideas grow, projects evolve, and some eventually fade away."
    />
    
    <!-- Active Projects Section -->
    <section class="section">
      <h2 class="section-title">Active Projects</h2>
      <div class="kanban-board">
        <div v-for="project in gardenProjects.active" :key="project.id" class="kanban-card">
          <div class="kanban-card-header">
            <h3 class="kanban-card-title">{{ project.title }}</h3>
            <span class="status-badge">{{ project.status }}</span>
          </div>
          <p class="kanban-card-date">Started: {{ formatDate(project.startDate) }}</p>
          <p class="kanban-card-description">{{ project.description }}</p>
          <div class="kanban-card-actions">
            <router-link :to="`/portfolio/${project.id}`" class="btn btn-small">View Details</router-link>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Musings / Ideas Section -->
    <section class="section">
      <h2 class="section-title">Musings & Ideas</h2>
      <div class="kanban-board">
        <div v-for="idea in gardenProjects.ideas" :key="idea.id" class="kanban-card">
          <div class="kanban-card-header">
            <h3 class="kanban-card-title">{{ idea.title }}</h3>
          </div>
          <p class="kanban-card-date">Created: {{ formatDate(idea.createdDate) }}</p>
          <p class="kanban-card-description">{{ idea.description }}</p>
        </div>
      </div>
    </section>
    
    <!-- Project Graveyard Section -->
    <section class="section">
      <h2 class="section-title">Project Graveyard</h2>
      <div class="kanban-board">
        <div v-for="project in gardenProjects.graveyard" :key="project.id" class="kanban-card graveyard-card">
          <div class="kanban-card-header">
            <h3 class="kanban-card-title">{{ project.title }}</h3>
          </div>
          <p class="kanban-card-date">{{ formatDate(project.startDate) }} - {{ formatDate(project.endDate) }}</p>
          <p class="kanban-card-description">{{ project.description }}</p>
          <div class="kanban-card-reason">
            <span class="reason-label">Reason:</span>
            <span class="reason-text">{{ project.reason }}</span>
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
  border-radius: 8px;
  padding: 1.5rem;
  box-shadow: var(--card-shadow);
  border-top: 4px solid var(--primary);
  transition: var(--transition);
}

.kanban-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 30px rgba(0, 0, 0, 0.6);
}

.graveyard-card {
  border-top-color: var(--accent);
  opacity: 0.8;
}

.kanban-card-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 0.75rem;
}

.kanban-card-title {
  font-size: 1.25rem;
  color: var(--text-primary);
  margin: 0;
}

.status-badge {
  background-color: var(--primary);
  color: white;
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  font-size: 0.75rem;
  font-weight: 600;
}

.kanban-card-date {
  font-size: 0.875rem;
  color: var(--text-secondary);
  margin-bottom: 1rem;
}

.kanban-card-description {
  color: var(--text-secondary);
  margin-bottom: 1.5rem;
  line-height: 1.5;
}

.kanban-card-actions {
  display: flex;
  justify-content: flex-end;
}

.btn-small {
  padding: 0.5rem 1rem;
  font-size: 0.875rem;
}

.kanban-card-reason {
  margin-top: 1rem;
  padding-top: 1rem;
  border-top: 1px solid var(--dark-surface-2);
}

.reason-label {
  font-weight: 600;
  color: var(--text-primary);
  margin-right: 0.5rem;
}

.reason-text {
  color: var(--text-secondary);
}
</style>
