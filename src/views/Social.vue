<template>
  <div class="social-page">
    <PageHeader
      title="Social Feed"
      subtitle="Connect with me on social media"
      description="Stay updated with my latest professional activities and insights"
    >
      <div class="social-buttons">
        <a 
          href="https://www.linkedin.com/in/christophergulliver/" 
          target="_blank" 
          rel="noopener noreferrer"
          class="social-button linkedin"
        >
          <i class="fab fa-linkedin-in"></i>
          <span>LinkedIn Profile</span>
        </a>
        <a 
          href="https://github.com/christophergulliver" 
          target="_blank" 
          rel="noopener noreferrer"
          class="social-button github"
        >
          <i class="fab fa-github"></i>
          <span>GitHub Profile</span>
        </a>
      </div>
    </PageHeader>
    
    <div class="social-feed">
      <!-- Loading Spinner -->
      <div v-if="isLoading" class="loading-container">
        <div class="spinner"></div>
        <p>Loading social feed...</p>
      </div>
      
      <!-- Elfsight LinkedIn Feed Widget -->
      <div 
        class="elfsight-app-2483368e-d830-4121-9c2e-8c4afcc9ab95" 
        data-elfsight-app-lazy
        :class="{ 'hidden': isLoading }"
      ></div>
    </div>
    
    <!-- Social Media Icons Footer -->
    <div class="social-icons-footer">
      <h3>Connect With Me</h3>
      <div class="social-icons">
        <a href="https://www.linkedin.com/in/christophergulliver/" target="_blank" rel="noopener noreferrer" class="social-icon linkedin">
          <i class="fab fa-linkedin"></i>
        </a>
        <a href="https://github.com/christophergulliver" target="_blank" rel="noopener noreferrer" class="social-icon github">
          <i class="fab fa-github"></i>
        </a>
        <a href="mailto:contact@christophergulliver.com" class="social-icon email">
          <i class="fas fa-envelope"></i>
        </a>
        <a href="https://twitter.com/christophergulliver" target="_blank" rel="noopener noreferrer" class="social-icon twitter">
          <i class="fab fa-twitter"></i>
        </a>
      </div>
    </div>
  </div>
</template>

<script>
import PageHeader from '../components/PageHeader.vue';

export default {
  name: 'SocialPage',
  components: {
    PageHeader
  },
  data() {
    return {
      isLoading: true
    };
  },
  mounted() {
    document.title = 'Social Feed | Christopher Gulliver';
    
    // Load Elfsight script
    const script = document.createElement('script');
    script.src = 'https://static.elfsight.com/platform/platform.js';
    script.async = true;
    
    // Listen for when Elfsight is loaded
    window.addEventListener('onElfsightLoad', () => {
      // Give a little extra time for the widget to render
      setTimeout(() => {
        this.isLoading = false;
      }, 1500);
    });
    
    document.head.appendChild(script);
    
    // Fallback in case the event doesn't fire
    setTimeout(() => {
      this.isLoading = false;
    }, 8000);
  }
}
</script>

<style scoped>
.social-page {
  padding: 2rem;
  max-width: 1200px;
  margin: 0 auto;
}

.social-buttons {
  display: flex;
  gap: 1rem;
  margin-top: 1.5rem;
}

.social-button {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.75rem 1.5rem;
  border-radius: 4px;
  font-weight: 600;
  text-decoration: none;
  transition: all 0.3s ease;
}

.social-button.linkedin {
  background-color: #0077b5;
  color: white;
}

.social-button.github {
  background-color: #333;
  color: white;
}

.social-button:hover {
  opacity: 0.9;
  transform: translateY(-2px);
}

.social-feed {
  margin-top: 2rem;
  position: relative;
  min-height: 400px;
}

/* Loading Spinner */
.loading-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 400px;
  width: 100%;
}

.spinner {
  width: 50px;
  height: 50px;
  border: 5px solid rgba(255, 255, 255, 0.1);
  border-radius: 50%;
  border-top-color: #0077b5;
  animation: spin 1s ease-in-out infinite;
  margin-bottom: 1rem;
}

@keyframes spin {
  to { transform: rotate(360deg); }
}

.loading-container p {
  color: var(--text-secondary, #aaa);
  font-size: 1rem;
}

.hidden {
  opacity: 0;
}

.social-icons-footer {
  margin-top: 3rem;
  text-align: center;
  padding: 2rem 0;
  border-top: 1px solid rgba(255, 255, 255, 0.1);
}

.social-icons-footer h3 {
  margin-bottom: 1.5rem;
  font-size: 1.5rem;
  color: var(--text-primary, #f5f5f5);
}

.social-icons {
  display: flex;
  justify-content: center;
  gap: 1.5rem;
}

.social-icon {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 50px;
  height: 50px;
  border-radius: 50%;
  color: white;
  font-size: 1.25rem;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.social-icon:hover {
  transform: translateY(-5px);
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
}

.social-icon.linkedin {
  background-color: #0077b5;
}

.social-icon.github {
  background-color: #333;
}

.social-icon.email {
  background-color: #ea4335;
}

.social-icon.twitter {
  background-color: #1da1f2;
}

@media (max-width: 768px) {
  .social-buttons {
    flex-direction: column;
  }
  
  .social-button {
    width: 100%;
    justify-content: center;
  }
}
</style>
