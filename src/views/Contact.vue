<template>
  <div class="contact">
    <page-header 
      title="Contact Me" 
      subtitle="Have a question, project idea, or just want to connect? Feel free to reach out through any of the channels below."
    />
    
    <div class="contact-container">
      <div class="contact-card">
        <div class="contact-icon">
          <i class="fab fa-linkedin-in"></i>
        </div>
        <div class="contact-details">
          <h3>LinkedIn</h3>
          <p>Connect with me professionally and view my career history.</p>
          <a href="https://www.linkedin.com/in/christophergulliver/" target="_blank" rel="noopener noreferrer" class="contact-link">linkedin.com/in/christophergulliver</a>
        </div>
      </div>

      <div class="contact-card">
        <div class="contact-icon">
          <i class="fab fa-github"></i>
        </div>
        <div class="contact-details">
          <h3>GitHub</h3>
          <p>Check out my code repositories and open source contributions.</p>
          <a href="https://github.com/ocgully" target="_blank" rel="noopener noreferrer" class="contact-link">github.com/ocgully</a>
        </div>
      </div>
    </div>
    
    <div class="availability-section">
      <h2 class="section-title">Current Availability</h2>
      <div class="availability-card">
        <div class="availability-status" :class="{ 'available': isAvailable }">
          {{ isAvailable ? 'Available for New Projects' : 'Currently Booked' }}
        </div>
        <p>{{ availabilityMessage }}</p>
      </div>
    </div>
  </div>
</template>

<script>
import PageHeader from '../components/PageHeader.vue';

export default {
  name: 'ContactPage',
  components: {
    PageHeader
  },
  data() {
    return {
      isAvailable: true,
      availabilityMessage: 'I am currently available for fractional CTO/Technical Leadership roles, consulting, technical direction, and advisory positions. Please reach out on LinkedIn to discuss potential collaborations.'
    }
  },
  mounted() {
    document.title = 'Contact | Christopher Gulliver';
  }
}
</script>

<style scoped>
.contact {
  max-width: 1200px;
  margin: 0 auto;
  padding: 2rem 1rem;
}

.section-description {
  color: var(--text-secondary);
  margin-bottom: 3rem;
  max-width: 800px;
}

.contact-container {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 3rem;
  margin-bottom: 4rem;
}

.contact-card {
  display: flex;
  background-color: var(--dark-surface);
  border-radius: 12px;
  overflow: hidden;
  box-shadow: var(--card-shadow);
  transition: transform 0.3s ease;
}

.contact-card:hover {
  transform: translateY(-5px);
}

.contact-icon {
  width: 80px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.75rem;
  color: white;
  background-color: var(--primary);
}

.contact-details {
  padding: 1.5rem;
  flex: 1;
}

.contact-details h3 {
  margin-top: 0;
  margin-bottom: 0.5rem;
  color: var(--text-primary);
}

.contact-details p {
  color: var(--text-secondary);
  margin-bottom: 1rem;
  line-height: 1.5;
}

.contact-link {
  color: var(--primary);
  text-decoration: none;
  font-weight: 500;
  transition: color 0.3s ease;
}

.contact-link:hover {
  color: var(--primary-light);
  text-decoration: underline;
}

.availability-section {
  margin-top: 3rem;
}

.availability-card {
  background-color: var(--dark-surface);
  border-radius: 12px;
  padding: 2rem;
  box-shadow: var(--card-shadow);
}

.availability-status {
  display: inline-block;
  padding: 0.5rem 1rem;
  border-radius: 50px;
  background-color: #f44336;
  color: white;
  font-weight: 600;
  margin-bottom: 1.5rem;
}

.availability-status.available {
  background-color: #4caf50;
}

@media (max-width: 768px) {
  .contact-container {
    grid-template-columns: 1fr;
  }
}
</style>
