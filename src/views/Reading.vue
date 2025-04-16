<template>
  <div class="reading">
    <page-header 
      title="Reading List" 
      subtitle="Books I've read, enjoyed, and recommend."
    />
    
    <div class="genre-filters">
      <button 
        v-for="genre in genres" 
        :key="genre"
        :class="['genre-filter', { active: activeGenre === genre }]"
        @click="setGenre(genre)"
      >
        {{ genre }}
      </button>
    </div>
    
    <div class="series-filter-container">
      <label for="series-filter">Filter by Series:</label>
      <select 
        id="series-filter" 
        v-model="activeSeries" 
        class="series-filter"
        @change="setSeries"
      >
        <option value="All">All Series</option>
        <option v-for="series in seriesList" :key="series" :value="series">
          {{ series }}
        </option>
      </select>
    </div>
    
    <div class="books-grid">
      <div v-for="book in filteredBooks" :key="book.id" class="book-card">
        <div class="book-cover">
          <img :src="book.coverImage" :alt="book.title">
        </div>
        <div class="book-content">
          <h3 class="book-title">{{ book.title }}</h3>
          <p class="book-author">{{ book.author }}</p>
          <div v-if="book.series" class="book-series">
            <span class="series-tag">
              <i class="fas fa-bookmark"></i> {{ book.series }}
            </span>
          </div>
          <div class="book-genres">
            <span v-for="(genre, index) in book.genres" :key="index" class="genre-tag">
              {{ genre }}
            </span>
          </div>
          <p class="book-description">{{ book.description }}</p>
          <div class="book-rating">
            <div class="stars">
              <i v-for="n in 5" :key="n" class="fas fa-star" :class="{ 'filled': n <= book.rating }"></i>
            </div>
          </div>
          <a :href="book.amazonLink" target="_blank" rel="noopener noreferrer" class="btn btn-primary amazon-link">
            <i class="fab fa-amazon"></i> View on Amazon
          </a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import PageHeader from '../components/PageHeader.vue';
import { useDataStore } from '../stores';

export default {
  name: 'ReadingPage',
  components: {
    PageHeader
  },
  data() {
    return {
      activeGenre: 'All',
      activeSeries: 'All',
      genres: ['All', 'Fantasy', 'Science Fiction', 'Classic', 'Business', 'Entertainment', 'Leadership', 'Technology', 'Self-Help'],
      seriesList: [],
      books: []
    }
  },
  computed: {
    filteredBooks() {
      let filtered = this.books;
      
      // Filter by genre if not "All"
      if (this.activeGenre !== 'All') {
        filtered = filtered.filter(book => book.genres && book.genres.includes(this.activeGenre));
      }
      
      // Filter by series if not "All"
      if (this.activeSeries !== 'All') {
        filtered = filtered.filter(book => book.series === this.activeSeries);
      }
      
      return filtered;
    }
  },
  methods: {
    setGenre(genre) {
      this.activeGenre = genre;
    },
    setSeries() {
      // Method is called by the select's @change event
      // No need for implementation as v-model handles the value change
    }
  },
  async created() {
    const store = useDataStore();
    await store.fetchData();
    this.books = store.books;
    
    // Extract all unique genres for the filter
    const allGenres = new Set(['All']);
    this.books.forEach(book => {
      if (book.genres) {
        book.genres.forEach(genre => allGenres.add(genre));
      }
    });
    this.genres = Array.from(allGenres);
    
    // Extract all unique series for the filter
    const allSeries = new Set();
    this.books.forEach(book => {
      if (book.series && book.series.trim() !== '') {
        allSeries.add(book.series);
      }
    });
    this.seriesList = Array.from(allSeries).sort();
    
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

.genre-filters {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-bottom: 2rem;
}

.genre-filter {
  background-color: var(--dark-surface);
  color: var(--text-secondary);
  border: none;
  padding: 0.5rem 1rem;
  border-radius: 20px;
  cursor: pointer;
  transition: all 0.3s ease;
}

.genre-filter:hover {
  background-color: var(--primary-light);
  color: white;
}

.genre-filter.active {
  background-color: var(--primary);
  color: white;
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

.series-filter-container {
  margin-bottom: 2rem;
  display: flex;
  align-items: center;
  gap: 1rem;
}

.series-filter {
  padding: 0.5rem 1rem;
  border-radius: 20px;
  background-color: var(--dark-surface);
  color: var(--text-primary);
  border: 1px solid var(--primary);
  cursor: pointer;
  min-width: 200px;
}

.series-filter:focus {
  outline: none;
  border-color: var(--primary-light);
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

.book-content {
  padding: 1.5rem;
  display: flex;
  flex-direction: column;
}

.book-title {
  margin-top: 0;
  margin-bottom: 0.5rem;
  font-size: 1.25rem;
  color: var(--text-primary);
}

.book-author {
  margin-top: 0;
  margin-bottom: 0.5rem;
  color: var(--primary-light);
  font-style: italic;
}

.book-series {
  margin-bottom: 0.75rem;
}

.series-tag {
  background-color: var(--primary-dark);
  color: white;
  padding: 0.25rem 0.75rem;
  border-radius: 20px;
  font-size: 0.85rem;
  display: inline-flex;
  align-items: center;
  gap: 0.25rem;
}

.book-genres {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-bottom: 1rem;
}

.genre-tag {
  background-color: var(--primary-dark);
  color: white;
  padding: 0.25rem 0.75rem;
  border-radius: 20px;
  font-size: 0.75rem;
}

.book-description {
  color: var(--text-secondary);
  line-height: 1.6;
  margin-bottom: 1rem;
  flex-grow: 1;
}

.book-rating {
  margin-bottom: 1rem;
}

.stars {
  display: flex;
  gap: 0.25rem;
  color: #aaa;
}

.stars .filled {
  color: #f1c40f;
}

.amazon-link {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  margin-top: auto;
}

.amazon-link i {
  font-size: 1.2rem;
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
