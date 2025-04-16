<template>
  <div class="reading">
    <page-header 
      title="Reading List" 
      subtitle="Books that have shaped my thinking and approach to technology, leadership, and innovation."
    />
    
    <!-- Currently Reading Section -->
    <section class="book-section">
      <h2 class="section-title">Currently Reading</h2>
      <div class="books-grid">
        <div v-for="book in books.currentlyReading" :key="book.id" class="book-card">
          <div class="book-cover">
            <img :src="book.coverImage" :alt="book.title">
          </div>
          <div class="book-content">
            <h3 class="book-title">{{ book.title }}</h3>
            <p class="book-author">by {{ book.author }}</p>
            <p class="book-description">{{ book.description }}</p>
            <a :href="book.amazonLink" target="_blank" rel="noopener noreferrer" class="btn btn-secondary">
              View on Amazon
            </a>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Past Reads Section -->
    <section class="book-section">
      <h2 class="section-title">Past Reads</h2>
      <div class="books-grid">
        <div v-for="book in books.pastReads" :key="book.id" class="book-card">
          <div class="book-cover">
            <img :src="book.coverImage" :alt="book.title">
            <div v-if="book.rating" class="book-rating">
              <span v-for="i in 5" :key="i" class="star" :class="{ 'filled': i <= book.rating }">★</span>
            </div>
          </div>
          <div class="book-content">
            <h3 class="book-title">{{ book.title }}</h3>
            <p class="book-author">by {{ book.author }}</p>
            <p class="book-description">{{ book.description }}</p>
            <a :href="book.amazonLink" target="_blank" rel="noopener noreferrer" class="btn btn-secondary">
              View on Amazon
            </a>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Reading Recommendations -->
    <section class="book-section">
      <h2 class="section-title">Recommendations</h2>
      <p class="section-description">Have a book recommendation for me? I'm always looking to expand my reading list.</p>
      <div class="recommendation-card">
        <h3>Suggest a Book</h3>
        <p>If you've read something insightful about technology, leadership, game development, or innovation that you think I might enjoy, please share it with me.</p>
        <a href="mailto:recommendations@christophergulliver.com?subject=Book%20Recommendation" class="btn btn-primary">
          Email a Recommendation
        </a>
      </div>
    </section>
  </div>
</template>

<script>
import { useDataStore } from '../stores';
import PageHeader from '../components/PageHeader.vue';

export default {
  name: 'ReadingPage',
  components: {
    PageHeader
  },
  data() {
    return {
      books: {
        currentlyReading: [],
        pastReads: []
      }
    }
  },
  async created() {
    const store = useDataStore();
    await store.fetchData();
    this.books = store.books;
    document.title = 'Reading List | Christopher Gulliver';
  }
}
</script>

<style scoped>
.reading {
  max-width: 1200px;
  margin: 0 auto;
  padding: 2rem 1rem;
}

.section-description {
  color: var(--text-secondary);
  margin-bottom: 2rem;
  max-width: 800px;
}

.book-section {
  margin-bottom: 4rem;
}

.book-section h2 {
  font-size: 1.8rem;
  margin-bottom: 1.5rem;
  color: var(--primary-light);
}

.books-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(450px, 1fr));
  gap: 2rem;
}

.book-card {
  display: flex;
  background-color: var(--dark-surface);
  border-radius: 12px;
  overflow: hidden;
  box-shadow: var(--card-shadow);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  height: 100%;
}

.book-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
}

.book-cover {
  width: 180px;
  position: relative;
  flex-shrink: 0;
}

.book-cover img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.book-rating {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: rgba(0, 0, 0, 0.7);
  padding: 0.5rem;
  text-align: center;
}

.star {
  color: #aaa;
  margin: 0 1px;
}

.star.filled {
  color: #ffc107;
}

.book-content {
  flex: 1;
  padding: 1.5rem;
  display: flex;
  flex-direction: column;
}

.book-title {
  font-size: 1.25rem;
  margin-top: 0;
  margin-bottom: 0.5rem;
  color: var(--text-primary);
}

.book-author {
  font-size: 0.875rem;
  color: var(--primary-light);
  margin-bottom: 1rem;
}

.book-description {
  color: var(--text-secondary);
  margin-bottom: 1.5rem;
  line-height: 1.5;
  flex-grow: 1;
}

.recommendation-card {
  background-color: var(--dark-surface);
  border-radius: 12px;
  padding: 2rem;
  text-align: center;
  max-width: 600px;
  margin: 0 auto;
  box-shadow: var(--card-shadow);
}

.recommendation-card h3 {
  margin-top: 0;
  color: var(--text-primary);
  margin-bottom: 1rem;
}

.recommendation-card p {
  color: var(--text-secondary);
  margin-bottom: 1.5rem;
  line-height: 1.5;
}

@media (max-width: 768px) {
  .books-grid {
    grid-template-columns: 1fr;
  }
  
  .book-card {
    flex-direction: row;
  }
  
  .book-cover {
    width: 140px;
  }
}

@media (max-width: 576px) {
  .book-card {
    flex-direction: column;
  }
  
  .book-cover {
    width: 100%;
    height: 300px;
  }
}
</style>
