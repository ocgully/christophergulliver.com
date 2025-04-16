<template>
  <div class="social">
    <page-header 
      title="Social Feed" 
      subtitle="A collection of my latest posts, updates, and activities from across the web."
    />
    
    <div class="social-links">
      <a href="https://linkedin.com/in/christophergulliver" target="_blank" rel="noopener noreferrer" class="social-link linkedin">
        <i class="fab fa-linkedin"></i>
        <span>LinkedIn</span>
      </a>
      <a href="https://github.com/christophergulliver" target="_blank" rel="noopener noreferrer" class="social-link github">
        <i class="fab fa-github"></i>
        <span>GitHub</span>
      </a>
      <a href="https://twitter.com/christophergulliver" target="_blank" rel="noopener noreferrer" class="social-link twitter">
        <i class="fab fa-twitter"></i>
        <span>Twitter</span>
      </a>
    </div>
    
    <div class="social-feed">
      <!-- LinkedIn Post -->
      <div class="social-card linkedin">
        <div class="social-card-header">
          <div class="social-icon">
            <i class="fab fa-linkedin"></i>
          </div>
          <div class="social-meta">
            <div class="social-platform">LinkedIn</div>
            <div class="social-date">April 12, 2025</div>
          </div>
        </div>
        <div class="social-content">
          <p>Excited to announce that I'll be speaking at the Game Developers Conference next month on "The Future of Technical Leadership in Game Development." Looking forward to sharing insights and connecting with fellow industry professionals! #GDC2025 #GameDev</p>
        </div>
        <div class="social-stats">
          <span><i class="fas fa-thumbs-up"></i> 128</span>
          <span><i class="fas fa-comment"></i> 32</span>
          <span><i class="fas fa-share"></i> 15</span>
        </div>
        <a href="#" class="social-link-out">View on LinkedIn</a>
      </div>
      
      <!-- GitHub Activity -->
      <div class="social-card github">
        <div class="social-card-header">
          <div class="social-icon">
            <i class="fab fa-github"></i>
          </div>
          <div class="social-meta">
            <div class="social-platform">GitHub</div>
            <div class="social-date">April 10, 2025</div>
          </div>
        </div>
        <div class="social-content">
          <p>Merged pull request: "Optimize rendering pipeline for mobile devices" in <a href="#">game-engine-toolkit</a></p>
          <div class="github-stats">
            <span>+2,145 lines</span>
            <span>-1,352 lines</span>
          </div>
        </div>
        <div class="social-stats">
          <span><i class="fas fa-code-branch"></i> 5 branches</span>
          <span><i class="fas fa-code-commit"></i> 12 commits</span>
        </div>
        <a href="#" class="social-link-out">View on GitHub</a>
      </div>
      
      <!-- Twitter Post -->
      <div class="social-card twitter">
        <div class="social-card-header">
          <div class="social-icon">
            <i class="fab fa-twitter"></i>
          </div>
          <div class="social-meta">
            <div class="social-platform">Twitter</div>
            <div class="social-date">April 8, 2025</div>
          </div>
        </div>
        <div class="social-content">
          <p>Just finished reading "The Art of Game Design" by Jesse Schell. Highly recommend for anyone interested in game development fundamentals. What are your favorite game design books? #GameDesign #BookRecommendations</p>
        </div>
        <div class="social-stats">
          <span><i class="fas fa-heart"></i> 87</span>
          <span><i class="fas fa-retweet"></i> 24</span>
          <span><i class="fas fa-reply"></i> 19</span>
        </div>
        <a href="#" class="social-link-out">View on Twitter</a>
      </div>
      
      <!-- LinkedIn Post -->
      <div class="social-card linkedin">
        <div class="social-card-header">
          <div class="social-icon">
            <i class="fab fa-linkedin"></i>
          </div>
          <div class="social-meta">
            <div class="social-platform">LinkedIn</div>
            <div class="social-date">April 5, 2025</div>
          </div>
        </div>
        <div class="social-content">
          <p>Thrilled to share that our team's latest project has surpassed 1 million downloads! Proud of what we've accomplished and grateful for everyone who contributed to this success. #MilestoneAchieved #TeamSuccess</p>
          <div class="social-image">
            <img src="/images/social/project-celebration.jpg" alt="Team celebration">
          </div>
        </div>
        <div class="social-stats">
          <span><i class="fas fa-thumbs-up"></i> 342</span>
          <span><i class="fas fa-comment"></i> 78</span>
          <span><i class="fas fa-share"></i> 45</span>
        </div>
        <a href="#" class="social-link-out">View on LinkedIn</a>
      </div>
      
      <!-- GitHub Activity -->
      <div class="social-card github">
        <div class="social-card-header">
          <div class="social-icon">
            <i class="fab fa-github"></i>
          </div>
          <div class="social-meta">
            <div class="social-platform">GitHub</div>
            <div class="social-date">April 3, 2025</div>
          </div>
        </div>
        <div class="social-content">
          <p>Released v2.0.0 of <a href="#">game-physics-library</a>: Added support for fluid dynamics and improved collision detection</p>
        </div>
        <div class="social-stats">
          <span><i class="fas fa-star"></i> 127 stars</span>
          <span><i class="fas fa-code-branch"></i> 43 forks</span>
        </div>
        <a href="#" class="social-link-out">View on GitHub</a>
      </div>
      
      <!-- Twitter Post -->
      <div class="social-card twitter">
        <div class="social-card-header">
          <div class="social-icon">
            <i class="fab fa-twitter"></i>
          </div>
          <div class="social-meta">
            <div class="social-platform">Twitter</div>
            <div class="social-date">March 30, 2025</div>
          </div>
        </div>
        <div class="social-content">
          <p>Hot take: The future of game development isn't just about better graphics, but about creating more meaningful player experiences and emotional connections. What do you think? #GameDev #FutureOfGaming</p>
        </div>
        <div class="social-stats">
          <span><i class="fas fa-heart"></i> 215</span>
          <span><i class="fas fa-retweet"></i> 87</span>
          <span><i class="fas fa-reply"></i> 56</span>
        </div>
        <a href="#" class="social-link-out">View on Twitter</a>
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
  mounted() {
    document.title = 'Social Feed | Christopher Gulliver';
  }
}
</script>

<style scoped>
.social {
  max-width: 1200px;
  margin: 0 auto;
  padding: 2rem 1rem;
}

.social-links {
  display: flex;
  justify-content: center;
  gap: 2rem;
  margin-bottom: 3rem;
}

.social-link {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.75rem 1.5rem;
  border-radius: 30px;
  color: white;
  text-decoration: none;
  font-weight: 600;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.social-link:hover {
  transform: translateY(-3px);
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
}

.social-link i {
  font-size: 1.25rem;
}

.social-link.linkedin {
  background-color: #0077b5;
}

.social-link.github {
  background-color: #333;
}

.social-link.twitter {
  background-color: #1da1f2;
}

.social-feed {
  column-count: 3;
  column-gap: 2rem;
}

.social-card {
  break-inside: avoid;
  margin-bottom: 2rem;
  background-color: var(--dark-surface);
  border-radius: 12px;
  overflow: hidden;
  box-shadow: var(--card-shadow);
  border-top: 4px solid;
}

.social-card.linkedin {
  border-top-color: #0077b5;
}

.social-card.github {
  border-top-color: #333;
}

.social-card.twitter {
  border-top-color: #1da1f2;
}

.social-card-header {
  display: flex;
  align-items: center;
  padding: 1rem;
  border-bottom: 1px solid var(--dark-surface-2);
}

.social-icon {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  margin-right: 1rem;
}

.social-card.linkedin .social-icon {
  background-color: #0077b5;
}

.social-card.github .social-icon {
  background-color: #333;
}

.social-card.twitter .social-icon {
  background-color: #1da1f2;
}

.social-meta {
  flex: 1;
}

.social-platform {
  font-weight: 600;
  color: var(--text-primary);
}

.social-date {
  font-size: 0.875rem;
  color: var(--text-secondary);
}

.social-content {
  padding: 1.5rem;
  color: var(--text-secondary);
  line-height: 1.6;
}

.social-content a {
  color: var(--primary);
  text-decoration: none;
}

.social-content a:hover {
  text-decoration: underline;
}

.social-image {
  margin-top: 1rem;
  border-radius: 8px;
  overflow: hidden;
}

.social-image img {
  width: 100%;
  height: auto;
}

.github-stats {
  display: flex;
  gap: 1rem;
  margin-top: 0.5rem;
  font-family: monospace;
  font-size: 0.875rem;
}

.github-stats span:first-child {
  color: #4caf50;
}

.github-stats span:last-child {
  color: #f44336;
}

.social-stats {
  display: flex;
  justify-content: space-between;
  padding: 0.75rem 1.5rem;
  background-color: var(--dark-surface-2);
  color: var(--text-secondary);
  font-size: 0.875rem;
}

.social-link-out {
  display: block;
  padding: 0.75rem;
  text-align: center;
  background-color: var(--dark-surface-2);
  color: var(--primary);
  text-decoration: none;
  font-weight: 500;
  transition: background-color 0.3s ease;
}

.social-link-out:hover {
  background-color: var(--dark-surface);
  text-decoration: underline;
}

@media (max-width: 992px) {
  .social-feed {
    column-count: 2;
  }
}

@media (max-width: 768px) {
  .social-links {
    flex-direction: column;
    align-items: center;
    gap: 1rem;
  }
  
  .social-feed {
    column-count: 1;
  }
}
</style>
