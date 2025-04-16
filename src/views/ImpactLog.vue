<template>
  <div class="impact-log">
    <page-header 
      title="Impact Log" 
      subtitle="A record of successes, metrics, and impact from various projects."
    />
    
    <div class="impact-grid">
      <div class="impact-card">
        <div class="impact-header">
          <h3>Draftkings Sportsbook App</h3>
          <span class="impact-date">2023</span>
        </div>
        <div class="impact-content">
          <p>Led engineering efforts that improved app performance by 35%, resulting in a 22% increase in user engagement and a 15% reduction in customer support tickets.</p>
          <div class="impact-metrics">
            <div class="metric">
              <span class="metric-value">35%</span>
              <span class="metric-label">Performance Improvement</span>
            </div>
            <div class="metric">
              <span class="metric-value">22%</span>
              <span class="metric-label">Engagement Increase</span>
            </div>
            <div class="metric">
              <span class="metric-value">15%</span>
              <span class="metric-label">Support Ticket Reduction</span>
            </div>
          </div>
          <div class="impact-details">
            <button class="details-toggle" @click="toggleDetails('draftkings')">
              <span v-if="!expandedCards.includes('draftkings')">Show Details</span>
              <span v-else>Hide Details</span>
              <i :class="expandedCards.includes('draftkings') ? 'fas fa-chevron-up' : 'fas fa-chevron-down'"></i>
            </button>
            <div class="details-content" v-if="expandedCards.includes('draftkings')">
              <ul>
                <li>Led a team of 12 engineers across 3 squads focusing on the core betting experience</li>
                <li>Implemented a new caching strategy that reduced API calls by 40%</li>
                <li>Introduced automated performance testing that caught regressions before release</li>
                <li>Coordinated with product and design to prioritize performance-focused features</li>
                <li>Mentored 4 junior engineers who were promoted to mid-level roles</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      <div class="impact-card">
        <div class="impact-header">
          <h3>Slickdeals Mobile App</h3>
          <span class="impact-date">2019-2022</span>
        </div>
        <div class="impact-content">
          <p>Directed the redesign and replatforming of the mobile app, resulting in a 40% increase in daily active users and a 28% improvement in user retention over 6 months.</p>
          <div class="impact-metrics">
            <div class="metric">
              <span class="metric-value">40%</span>
              <span class="metric-label">DAU Increase</span>
            </div>
            <div class="metric">
              <span class="metric-value">28%</span>
              <span class="metric-label">Retention Improvement</span>
            </div>
            <div class="metric">
              <span class="metric-value">4.7</span>
              <span class="metric-label">App Store Rating</span>
            </div>
          </div>
          <div class="impact-details">
            <button class="details-toggle" @click="toggleDetails('slickdeals')">
              <span v-if="!expandedCards.includes('slickdeals')">Show Details</span>
              <span v-else>Hide Details</span>
              <i :class="expandedCards.includes('slickdeals') ? 'fas fa-chevron-up' : 'fas fa-chevron-down'"></i>
            </button>
            <div class="details-content" v-if="expandedCards.includes('slickdeals')">
              <ul>
                <li>Directed the replatforming of the mobile app from Cordova to native iOS and Android</li>
                <li>Implemented a new personalization engine that increased deal relevance by 35%</li>
                <li>Reduced app startup time from 4.2 seconds to 1.8 seconds</li>
                <li>Introduced a new notification system that increased re-engagement by 42%</li>
                <li>Grew the mobile team from 6 to 15 engineers while maintaining high code quality</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      <div class="impact-card">
        <div class="impact-header">
          <h3>Disney Inside Out Game</h3>
          <span class="impact-date">2015</span>
        </div>
        <div class="impact-content">
          <p>Led architecture and development of a mobile game that reached 10 million downloads in the first month, with a 4.8-star average rating across app stores.</p>
          <div class="impact-metrics">
            <div class="metric">
              <span class="metric-value">10M+</span>
              <span class="metric-label">Downloads</span>
            </div>
            <div class="metric">
              <span class="metric-value">4.8</span>
              <span class="metric-label">Average Rating</span>
            </div>
            <div class="metric">
              <span class="metric-value">32%</span>
              <span class="metric-label">Day 30 Retention</span>
            </div>
          </div>
          <div class="impact-details">
            <button class="details-toggle" @click="toggleDetails('disney')">
              <span v-if="!expandedCards.includes('disney')">Show Details</span>
              <span v-else>Hide Details</span>
              <i :class="expandedCards.includes('disney') ? 'fas fa-chevron-up' : 'fas fa-chevron-down'"></i>
            </button>
            <div class="details-content" v-if="expandedCards.includes('disney')">
              <ul>
                <li>Designed the core architecture for the Inside Out mobile game</li>
                <li>Collaborated closely with Pixar to ensure character authenticity</li>
                <li>Implemented memory optimization techniques that allowed the game to run on older devices</li>
                <li>Created a custom emotion-based gameplay system that resonated with players</li>
                <li>Developed a content pipeline that allowed rapid iteration and updates</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      <div class="impact-card">
        <div class="impact-header">
          <h3>Lonch, Inc.</h3>
          <span class="impact-date">2018</span>
        </div>
        <div class="impact-content">
          <p>Founded and led development of a mobile platform that streamlined restaurant ordering, reducing wait times by an average of 22 minutes and increasing table turnover by 15%.</p>
          <div class="impact-metrics">
            <div class="metric">
              <span class="metric-value">22min</span>
              <span class="metric-label">Wait Time Reduction</span>
            </div>
            <div class="metric">
              <span class="metric-value">15%</span>
              <span class="metric-label">Table Turnover Increase</span>
            </div>
            <div class="metric">
              <span class="metric-value">12</span>
              <span class="metric-label">Restaurant Partners</span>
            </div>
          </div>
          <div class="impact-details">
            <button class="details-toggle" @click="toggleDetails('lonch')">
              <span v-if="!expandedCards.includes('lonch')">Show Details</span>
              <span v-else>Hide Details</span>
              <i :class="expandedCards.includes('lonch') ? 'fas fa-chevron-up' : 'fas fa-chevron-down'"></i>
            </button>
            <div class="details-content" v-if="expandedCards.includes('lonch')">
              <ul>
                <li>Developed a mobile ordering platform from concept to launch in 6 months</li>
                <li>Secured $500K in seed funding based on prototype and business plan</li>
                <li>Integrated with 3 different POS systems to streamline order processing</li>
                <li>Implemented a real-time kitchen status system that improved order accuracy by 28%</li>
                <li>Created a dynamic pricing model that increased average order value by 18%</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      <div class="impact-card">
        <div class="impact-header">
          <h3>id Software Tools</h3>
          <span class="impact-date">2010</span>
        </div>
        <div class="impact-content">
          <p>Developed internal tools that reduced level design iteration time by 40%, enabling faster development cycles and more polished game environments.</p>
          <div class="impact-metrics">
            <div class="metric">
              <span class="metric-value">40%</span>
              <span class="metric-label">Iteration Time Reduction</span>
            </div>
            <div class="metric">
              <span class="metric-value">3x</span>
              <span class="metric-label">Designer Productivity</span>
            </div>
          </div>
          <div class="impact-details">
            <button class="details-toggle" @click="toggleDetails('id')">
              <span v-if="!expandedCards.includes('id')">Show Details</span>
              <span v-else>Hide Details</span>
              <i :class="expandedCards.includes('id') ? 'fas fa-chevron-up' : 'fas fa-chevron-down'"></i>
            </button>
            <div class="details-content" v-if="expandedCards.includes('id')">
              <ul>
                <li>Developed a custom level editor extension that streamlined the design workflow</li>
                <li>Created automated testing tools that identified performance bottlenecks</li>
                <li>Implemented a visual scripting system that empowered designers to create complex interactions</li>
                <li>Built asset optimization tools that reduced memory usage by 35%</li>
                <li>Developed a version control integration that improved team collaboration</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import PageHeader from '../components/PageHeader.vue';

export default {
  name: 'ImpactLogPage',
  components: {
    PageHeader
  },
  data() {
    return {
      expandedCards: []
    }
  },
  methods: {
    toggleDetails(card) {
      if (this.expandedCards.includes(card)) {
        this.expandedCards = this.expandedCards.filter(c => c !== card);
      } else {
        this.expandedCards.push(card);
      }
    }
  },
  mounted() {
    document.title = 'Impact Log | Christopher Gulliver';
  }
}
</script>

<style scoped>
.impact-log {
  max-width: 1200px;
  margin: 0 auto;
  padding: 2rem 1rem;
}

.impact-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
  gap: 2rem;
  margin-top: 2rem;
}

.impact-card {
  background-color: var(--dark-surface);
  border-radius: 12px;
  overflow: hidden;
  box-shadow: var(--card-shadow);
  transition: transform 0.3s ease;
}

.impact-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
}

.impact-header {
  background: var(--primary-gradient);
  padding: 1.5rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.impact-header h3 {
  margin: 0;
  color: white;
  font-size: 1.25rem;
}

.impact-date {
  background-color: rgba(255, 255, 255, 0.2);
  padding: 0.25rem 0.75rem;
  border-radius: 20px;
  color: white;
  font-size: 0.875rem;
  font-weight: 600;
}

.impact-content {
  padding: 1.5rem;
}

.impact-content p {
  color: var(--text-secondary);
  line-height: 1.6;
  margin-bottom: 1.5rem;
}

.impact-metrics {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));
  gap: 1rem;
}

.metric {
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
}

.metric-value {
  font-size: 1.75rem;
  font-weight: 700;
  color: var(--primary);
  margin-bottom: 0.25rem;
}

.metric-label {
  font-size: 0.75rem;
  color: var(--text-secondary);
  text-transform: uppercase;
  letter-spacing: 0.5px;
}

.impact-details {
  margin-top: 1rem;
}

.details-toggle {
  background-color: var(--primary);
  color: white;
  border: none;
  padding: 0.5rem 1rem;
  border-radius: 6px;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 100%;
}

.details-toggle i {
  margin-left: 0.5rem;
}

.details-content {
  margin-top: 1rem;
  padding: 1rem;
  background-color: var(--dark-surface);
  border-radius: 6px;
}

.details-content ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.details-content li {
  margin-bottom: 0.5rem;
}

@media (max-width: 768px) {
  .impact-grid {
    grid-template-columns: 1fr;
  }
}
</style>
