<template>
  <div class="home">
    <!-- Hero Section -->
    <section class="hero">
      <div class="hero-content">
        <div class="hero-image-container">
          <img src="/images/profile.jpg" alt="Christopher Gulliver" class="hero-image">
        </div>
        <div class="hero-text">
          <h1 class="hero-title">Christopher Gulliver</h1>
          <p class="hero-subtitle">Innovator, Technology Leader, and Entrepreneur</p>
          <router-link to="/portfolio" class="btn btn-primary">View Portfolio</router-link>
        </div>
      </div>
    </section>

    <!-- About Section -->
    <section class="section" id="about">
      <h2 class="section-title">About Me</h2>
      <div class="about-content">
        <div class="about-card">
          <h3>My Background</h3>
          <p>With over 15 years of experience in technology and game development, I've led teams and projects across multiple platforms and industries. My journey has taken me from AAA game studios to innovative startups, always with a focus on creating exceptional digital experiences.</p>
        </div>
        
        <div class="about-card">
          <h3>My Approach</h3>
          <p>I believe in combining technical excellence with creative vision. My approach centers on user-focused design, agile methodologies, and fostering collaborative environments where innovation can thrive.</p>
        </div>
        
        <div class="about-card">
          <h3>My Ideologies</h3>
          <p>I'm passionate about leveraging technology to solve meaningful problems. I advocate for sustainable development practices, inclusive design, and the responsible application of emerging technologies.</p>
        </div>
        
        <div class="about-card">
          <h3>My Mission</h3>
          <p>To create technology that enhances human experiences, empowers creativity, and contributes positively to our digital future.</p>
        </div>
      </div>
    </section>

    <!-- Many Hats Section -->
    <section class="section" id="hats">
      <h2 class="section-title">The Many Hats of Christopher Gulliver</h2>
      <div class="hats-grid grid">
        <div class="card">
          <div class="card-content">
            <h3 class="card-title">Entrepreneur</h3>
            <p class="card-description">Building innovative businesses and products that solve real-world problems and create value.</p>
          </div>
        </div>
        
        <div class="card">
          <div class="card-content">
            <h3 class="card-title">Technical Leader</h3>
            <p class="card-description">Guiding teams to deliver exceptional technical solutions while fostering growth and collaboration.</p>
          </div>
        </div>
        
        <div class="card">
          <div class="card-content">
            <h3 class="card-title">Consultant</h3>
            <p class="card-description">Providing strategic and technical expertise to help organizations overcome challenges and achieve their goals.</p>
          </div>
        </div>
        
        <div class="card">
          <div class="card-content">
            <h3 class="card-title">Game Developer</h3>
            <p class="card-description">Creating engaging interactive experiences across multiple platforms and genres.</p>
          </div>
        </div>
        
        <div class="card">
          <div class="card-content">
            <h3 class="card-title">Children's Book Author</h3>
            <p class="card-description">Crafting stories that inspire curiosity, creativity, and a love of learning in young readers.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Featured Projects Section -->
    <section class="section" id="featured-projects">
      <h2 class="section-title">Featured Projects</h2>
      <div class="featured-projects-grid grid">
        <div v-for="project in featuredProjects" :key="project.id" class="card">
          <img :src="project.image" :alt="project.title" class="card-image">
          <div class="card-content">
            <h3 class="card-title">{{ project.title }}</h3>
            <p class="card-subtitle">{{ project.company }} | {{ project.releaseYear }}</p>
            <p class="card-description">{{ project.description }}</p>
            <router-link :to="`/portfolio/${project.id}`" class="btn btn-secondary">View Details</router-link>
          </div>
        </div>
      </div>
      <div class="view-all-container">
        <router-link to="/portfolio" class="btn btn-primary">View All Projects</router-link>
      </div>
    </section>
  </div>
</template>

<script>
import { useDataStore } from '../stores';

export default {
  name: 'HomePage',
  data() {
    return {
      featuredProjects: []
    }
  },
  async created() {
    const store = useDataStore();
    await store.fetchData();
    this.featuredProjects = store.projects.filter(project => project.featured && project.type === 'project').slice(0, 3);
    document.title = 'Christopher Gulliver | Home';
  }
}
</script>

<style scoped>
.hero {
  margin-bottom: 4rem;
}

.hero-content {
  display: flex;
  align-items: center;
  gap: 3rem;
  max-width: 1200px;
  margin: 0 auto;
  padding: 2rem;
  background: var(--dark-surface);
  border-radius: 12px;
  box-shadow: var(--card-shadow);
}

.hero-image-container {
  flex-shrink: 0;
  width: 300px;
  height: 300px;
  border-radius: 50%;
  overflow: hidden;
  border: 5px solid var(--primary);
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
}

.hero-image {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.hero-text {
  flex: 1;
}

.hero-title {
  font-size: 3.5rem;
  margin-bottom: 1rem;
  background: var(--gradient-1);
  -webkit-background-clip: text;
  background-clip: text;
  -webkit-text-fill-color: transparent;
}

.hero-subtitle {
  font-size: 1.5rem;
  color: var(--text-secondary);
  margin-bottom: 2rem;
}

.about-content {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 1.5rem;
  margin-bottom: 2rem;
}

.about-card {
  background-color: var(--dark-surface);
  border-radius: 12px;
  padding: 1.5rem;
  box-shadow: var(--card-shadow);
  transition: transform 0.3s ease;
}

.about-card:hover {
  transform: translateY(-5px);
}

.about-card h3 {
  margin-top: 0;
  margin-bottom: 1rem;
  color: var(--primary-light);
  font-size: 1.25rem;
}

.about-card p {
  margin-bottom: 0;
  color: var(--text-secondary);
  line-height: 1.6;
}

.view-all-container {
  margin-top: 2rem;
  text-align: center;
}

@media (max-width: 992px) {
  .hero-content {
    flex-direction: column;
    text-align: center;
    gap: 2rem;
  }
  
  .hero-title {
    font-size: 2.8rem;
  }
  
  .hero-subtitle {
    font-size: 1.3rem;
  }
}

@media (max-width: 1200px) {
  .about-content {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 768px) {
  .about-content {
    grid-template-columns: 1fr;
  }
}
</style>
