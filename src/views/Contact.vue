<template>
  <div class="contact">
    <page-header 
      title="Contact Me" 
      subtitle="Have a question, project idea, or just want to connect? Feel free to reach out through any of the channels below."
    />
    
    <div class="contact-container">
      <div class="contact-info">
        <div class="contact-card">
          <div class="contact-icon">
            <i class="fas fa-envelope"></i>
          </div>
          <div class="contact-details">
            <h3>Email</h3>
            <p>The best way to reach me for professional inquiries.</p>
            <a href="mailto:hello@christophergulliver.com" class="contact-link">hello@christophergulliver.com</a>
          </div>
        </div>
        
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
            <i class="fab fa-twitter"></i>
          </div>
          <div class="contact-details">
            <h3>Twitter</h3>
            <p>Follow me for thoughts on tech, gaming, and industry trends.</p>
            <a href="https://twitter.com/christophergulliver" target="_blank" rel="noopener noreferrer" class="contact-link">@christophergulliver</a>
          </div>
        </div>

        <div class="contact-card">
          <div class="contact-icon">
            <i class="fab fa-github"></i>
          </div>
          <div class="contact-details">
            <h3>GitHub</h3>
            <p>Check out my code repositories and open source contributions.</p>
            <a href="https://github.com/christophergulliver" target="_blank" rel="noopener noreferrer" class="contact-link">github.com/christophergulliver</a>
          </div>
        </div>
      </div>
      
      <div class="contact-form-container">
        <h2>Send a Message</h2>
        <form class="contact-form" @submit.prevent="submitForm">
          <div class="form-group">
            <label for="name">Name</label>
            <input type="text" id="name" v-model="formData.name" required>
          </div>
          
          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" v-model="formData.email" required>
          </div>
          
          <div class="form-group">
            <label for="subject">Subject</label>
            <input type="text" id="subject" v-model="formData.subject" required>
          </div>
          
          <div class="form-group">
            <label for="message">Message</label>
            <textarea id="message" v-model="formData.message" rows="5" required></textarea>
          </div>
          
          <button type="submit" class="btn btn-primary" :disabled="isSubmitting">
            {{ isSubmitting ? 'Sending...' : 'Send Message' }}
          </button>
          
          <div v-if="formStatus" class="form-status" :class="{ 'success': formStatus.success }">
            {{ formStatus.message }}
          </div>
        </form>
      </div>
    </div>
    
    <div class="availability-section">
      <h2 class="section-title">Current Availability</h2>
      <div class="availability-card">
        <div class="availability-status" :class="{ 'available': isAvailable }">
          {{ isAvailable ? 'Available for New Projects' : 'Currently Booked' }}
        </div>
        <p>{{ availabilityMessage }}</p>
        <p class="availability-update">Last updated: {{ lastUpdated }}</p>
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
      formData: {
        name: '',
        email: '',
        subject: '',
        message: ''
      },
      isSubmitting: false,
      formStatus: null,
      isAvailable: true,
      availabilityMessage: 'I am currently available for consulting, technical direction, and advisory roles. I typically book projects 2-3 months in advance, so please reach out early to discuss potential collaborations.',
      lastUpdated: 'April 16, 2025'
    }
  },
  methods: {
    submitForm() {
      this.isSubmitting = true;
      
      // Simulate form submission
      setTimeout(() => {
        this.isSubmitting = false;
        this.formStatus = {
          success: true,
          message: 'Thank you for your message! I will get back to you as soon as possible.'
        };
        
        // Reset form after successful submission
        this.formData = {
          name: '',
          email: '',
          subject: '',
          message: ''
        };
        
        // Clear success message after 5 seconds
        setTimeout(() => {
          this.formStatus = null;
        }, 5000);
      }, 1500);
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

.contact-info {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
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

.contact-form-container {
  background-color: var(--dark-surface);
  border-radius: 12px;
  padding: 2rem;
  box-shadow: var(--card-shadow);
}

.contact-form-container h2 {
  margin-top: 0;
  margin-bottom: 1.5rem;
  color: var(--text-primary);
}

.form-group {
  margin-bottom: 1.5rem;
}

.form-group label {
  display: block;
  margin-bottom: 0.5rem;
  color: var(--text-secondary);
  font-weight: 500;
}

.form-group input,
.form-group textarea {
  width: 100%;
  padding: 0.75rem;
  border-radius: 6px;
  border: 1px solid var(--dark-surface-2);
  background-color: var(--dark-background);
  color: var(--text-primary);
  font-family: inherit;
  transition: border-color 0.3s ease;
}

.form-group input:focus,
.form-group textarea:focus {
  outline: none;
  border-color: var(--primary);
}

.form-status {
  margin-top: 1.5rem;
  padding: 1rem;
  border-radius: 6px;
  background-color: #f44336;
  color: white;
}

.form-status.success {
  background-color: #4caf50;
}

.availability-section {
  margin-top: 3rem;
}

.availability-card {
  background-color: var(--dark-surface);
  border-radius: 12px;
  padding: 2rem;
  text-align: center;
  max-width: 800px;
  margin: 0 auto;
  box-shadow: var(--card-shadow);
}

.availability-status {
  display: inline-block;
  padding: 0.5rem 1.5rem;
  border-radius: 30px;
  font-weight: 600;
  margin-bottom: 1.5rem;
  background-color: #f44336;
  color: white;
}

.availability-status.available {
  background-color: #4caf50;
}

.availability-card p {
  color: var(--text-secondary);
  line-height: 1.6;
  margin-bottom: 1rem;
}

.availability-update {
  font-size: 0.875rem;
  opacity: 0.7;
  margin-top: 1.5rem;
}

@media (max-width: 768px) {
  .contact-container {
    grid-template-columns: 1fr;
  }
}
</style>
