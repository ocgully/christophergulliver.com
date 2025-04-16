<template>
  <div class="articles">
    <page-header 
      title="Articles & Publications" 
      subtitle="A collection of my writings, thoughts, and insights on technology, game development, and leadership."
    />
    
    <div class="articles-grid">
      <div v-for="article in articles" :key="article.id" class="article-card">
        <div class="article-image">
          <img :src="article.previewImage" :alt="article.title">
        </div>
        <div class="article-content">
          <h3 class="article-title">{{ article.title }}</h3>
          <p class="article-date">{{ formatDate(article.date) }}</p>
          <p class="article-summary">{{ article.summary }}</p>
          <div class="article-actions">
            <a :href="article.url" target="_blank" rel="noopener noreferrer" class="btn btn-primary">
              Read Online
            </a>
            <a v-if="article.pdfPath" :href="article.pdfPath" target="_blank" rel="noopener noreferrer" class="btn btn-outline">
              <i class="fas fa-file-pdf"></i> View PDF
            </a>
          </div>
        </div>
      </div>
    </div>
    
    <section class="speaking-engagements">
      <h2 class="section-title">Speaking Engagements</h2>
      <p class="section-description">Conferences, workshops, and panels where I've shared my expertise and insights.</p>
      
      <div class="engagements-list">
        <div class="engagement-item">
          <div class="engagement-date">March 2025</div>
          <div class="engagement-content">
            <h3>Game Developers Conference (GDC)</h3>
            <p>Panel: "The Future of Technical Leadership in Game Development"</p>
            <p class="engagement-location">San Francisco, CA</p>
          </div>
        </div>
        
        <div class="engagement-item">
          <div class="engagement-date">November 2024</div>
          <div class="engagement-content">
            <h3>Tech Leadership Summit</h3>
            <p>Talk: "Building Resilient Engineering Teams in the Game Industry"</p>
            <p class="engagement-location">Seattle, WA</p>
          </div>
        </div>
        
        <div class="engagement-item">
          <div class="engagement-date">June 2024</div>
          <div class="engagement-content">
            <h3>Mobile Game Development Conference</h3>
            <p>Workshop: "Performance Optimization Strategies for Mobile Games"</p>
            <p class="engagement-location">Austin, TX</p>
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
  name: 'ArticlesPage',
  components: {
    PageHeader
  },
  data() {
    return {
      articles: []
    }
  },
  methods: {
    formatDate(dateString) {
      if (!dateString) return '';
      const options = { year: 'numeric', month: 'long', day: 'numeric' };
      return new Date(dateString).toLocaleDateString(undefined, options);
    }
  },
  async created() {
    const store = useDataStore();
    await store.fetchData();
    this.articles = store.articles;
    document.title = 'Articles & Publications | Christopher Gulliver';
  }
}
</script>

<style scoped>
.articles {
  max-width: 1200px;
  margin: 0 auto;
  padding: 2rem 1rem;
}

.section-description {
  color: var(--text-secondary);
  margin-bottom: 2rem;
  max-width: 800px;
}

.articles-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
  gap: 2rem;
  margin-bottom: 4rem;
}

.article-card {
  background-color: var(--dark-surface);
  border-radius: 12px;
  overflow: hidden;
  box-shadow: var(--card-shadow);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.article-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
}

.article-image {
  height: 200px;
  overflow: hidden;
}

.article-image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.5s ease;
}

.article-card:hover .article-image img {
  transform: scale(1.05);
}

.article-content {
  padding: 1.5rem;
}

.article-title {
  font-size: 1.25rem;
  margin-top: 0;
  margin-bottom: 0.5rem;
  color: var(--text-primary);
}

.article-date {
  font-size: 0.875rem;
  color: var(--primary-light);
  margin-bottom: 1rem;
}

.article-summary {
  color: var(--text-secondary);
  margin-bottom: 1.5rem;
  line-height: 1.5;
}

.article-actions {
  display: flex;
  gap: 1rem;
}

.btn-outline {
  background-color: transparent;
  border: 1px solid var(--primary);
  color: var(--primary);
}

.btn-outline:hover {
  background-color: var(--primary);
  color: white;
}

/* Speaking Engagements */
.speaking-engagements {
  margin-top: 3rem;
}

.engagements-list {
  margin-top: 2rem;
}

.engagement-item {
  display: flex;
  margin-bottom: 2rem;
  background-color: var(--dark-surface);
  border-radius: 12px;
  overflow: hidden;
  box-shadow: var(--card-shadow);
}

.engagement-date {
  background-color: var(--primary);
  color: white;
  padding: 1.5rem;
  display: flex;
  align-items: center;
  justify-content: center;
  min-width: 150px;
  font-weight: 600;
}

.engagement-content {
  padding: 1.5rem;
  flex: 1;
}

.engagement-content h3 {
  margin-top: 0;
  margin-bottom: 0.5rem;
  color: var(--text-primary);
}

.engagement-content p {
  color: var(--text-secondary);
  margin-bottom: 0.5rem;
  line-height: 1.5;
}

.engagement-location {
  font-style: italic;
  color: var(--text-secondary);
  opacity: 0.8;
}

@media (max-width: 768px) {
  .articles-grid {
    grid-template-columns: 1fr;
  }
  
  .engagement-item {
    flex-direction: column;
  }
  
  .engagement-date {
    width: 100%;
    padding: 1rem;
  }
}
</style>
