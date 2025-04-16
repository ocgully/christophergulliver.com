<template>
  <div class="timeline">
    <page-header 
      title="Life Timeline" 
      subtitle="A chronological journey through my life, professional career, and key milestones."
    />
    
    <div class="timeline-container">
      <!-- 2023-Present -->
      <div class="timeline-item">
        <div class="timeline-dot"></div>
        <div class="timeline-date">2023 - Present</div>
        <div class="timeline-content">
          <h3>Senior Technical Director</h3>
          <h4>Independent Consultant</h4>
          <p>Providing technical leadership and consulting services to game development studios and tech companies. Specializing in architecture design, technical strategy, and team mentorship.</p>
          <ul class="timeline-highlights">
            <li>Advised multiple studios on technical architecture and pipeline optimization</li>
            <li>Mentored engineering teams on best practices and modern development workflows</li>
            <li>Contributed to open-source game development tools and frameworks</li>
          </ul>
        </div>
      </div>
      
      <!-- 2018-2023 -->
      <div class="timeline-item">
        <div class="timeline-dot"></div>
        <div class="timeline-date">2018 - 2023</div>
        <div class="timeline-content">
          <h3>Technical Director</h3>
          <h4>Major Game Studio</h4>
          <p>Led technical direction for multiple AAA game titles across various platforms. Managed a team of senior engineers and collaborated with cross-functional departments.</p>
          <ul class="timeline-highlights">
            <li>Directed technical implementation for 3 major game releases</li>
            <li>Implemented advanced rendering techniques and optimization strategies</li>
            <li>Established technical standards and best practices across the studio</li>
          </ul>
        </div>
      </div>
      
      <!-- 2015-2018 -->
      <div class="timeline-item">
        <div class="timeline-dot"></div>
        <div class="timeline-date">2015 - 2018</div>
        <div class="timeline-content">
          <h3>Lead Engineer</h3>
          <h4>Disney</h4>
          <p>Led engineering efforts for mobile game development. Managed a team of developers and coordinated with design and art departments to deliver high-quality mobile experiences.</p>
          <ul class="timeline-highlights">
            <li>Led development for "Inside Out: Thought Bubbles" and "Where's My Mickey?"</li>
            <li>Optimized game performance across a wide range of mobile devices</li>
            <li>Implemented analytics and monetization systems</li>
          </ul>
        </div>
      </div>
      
      <!-- 2010-2015 -->
      <div class="timeline-item">
        <div class="timeline-dot"></div>
        <div class="timeline-date">2010 - 2015</div>
        <div class="timeline-content">
          <h3>Senior Software Engineer</h3>
          <h4>n-Space</h4>
          <p>Developed games for Nintendo platforms, focusing on technical implementation and optimization for handheld devices.</p>
          <ul class="timeline-highlights">
            <li>Worked on Nintendo DS versions of "GoldenEye 007" and "James Bond 007: Blood Stone"</li>
            <li>Implemented core gameplay systems and platform-specific features</li>
            <li>Collaborated with Nintendo technical support teams</li>
          </ul>
        </div>
      </div>
      
      <!-- 2007-2010 -->
      <div class="timeline-item">
        <div class="timeline-dot"></div>
        <div class="timeline-date">2007 - 2010</div>
        <div class="timeline-content">
          <h3>Software Engineer</h3>
          <h4>Midway Games</h4>
          <p>Developed gameplay systems and technical features for console games. Worked on "Wheelman" and early development of "Stranglehold 2".</p>
          <ul class="timeline-highlights">
            <li>Implemented vehicle physics and damage systems for "Wheelman"</li>
            <li>Contributed to rendering pipeline and effects systems</li>
            <li>Participated in technical design and architecture planning</li>
          </ul>
        </div>
      </div>
      
      <!-- 2005-2007 -->
      <div class="timeline-item">
        <div class="timeline-dot"></div>
        <div class="timeline-date">2005 - 2007</div>
        <div class="timeline-content">
          <h3>Junior Developer</h3>
          <h4>Indie Game Studio</h4>
          <p>Started career in game development working on indie projects and learning foundational skills in programming and game design.</p>
          <ul class="timeline-highlights">
            <li>Developed small-scale games and tech demos</li>
            <li>Learned industry-standard tools and practices</li>
            <li>Contributed to all aspects of game development in a small team environment</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import PageHeader from '../components/PageHeader.vue';

export default {
  name: 'TimelinePage',
  components: {
    PageHeader
  },
  mounted() {
    document.title = 'Career Timeline | Christopher Gulliver';
  }
}
</script>

<style scoped>
.timeline {
  max-width: 1000px;
  margin: 0 auto;
  padding: 2rem 1rem;
}

.section-description {
  color: var(--text-secondary);
  margin-bottom: 3rem;
  max-width: 800px;
}

.timeline-container {
  position: relative;
  padding: 2rem 0;
}

.timeline-container::before {
  content: '';
  position: absolute;
  top: 0;
  bottom: 0;
  left: 120px;
  width: 3px;
  background: var(--primary-gradient);
  background-image: linear-gradient(to bottom, var(--primary), var(--primary-light));
}

.timeline-item {
  position: relative;
  margin-bottom: 3rem;
  padding-left: 160px;
}

.timeline-item:last-child {
  margin-bottom: 0;
}

.timeline-dot {
  position: absolute;
  left: 116px;
  width: 12px;
  height: 12px;
  border-radius: 50%;
  background-color: var(--primary);
  transform: translateY(10px);
  box-shadow: 0 0 0 4px var(--dark-background), 0 0 0 6px rgba(125, 90, 250, 0.3);
}

.timeline-date {
  position: absolute;
  left: 0;
  width: 100px;
  text-align: right;
  font-weight: 600;
  color: var(--primary);
  transform: translateY(8px);
}

.timeline-content {
  background-color: var(--dark-surface);
  border-radius: 12px;
  padding: 1.5rem;
  box-shadow: var(--card-shadow);
  transition: transform 0.3s ease;
}

.timeline-content:hover {
  transform: translateY(-5px);
}

.timeline-content h3 {
  margin-top: 0;
  margin-bottom: 0.25rem;
  color: var(--text-primary);
  font-size: 1.5rem;
}

.timeline-content h4 {
  margin-top: 0;
  margin-bottom: 1rem;
  color: var(--primary-light);
  font-size: 1.1rem;
  font-weight: 500;
}

.timeline-content p {
  color: var(--text-secondary);
  line-height: 1.6;
  margin-bottom: 1rem;
}

.timeline-highlights {
  padding-left: 1.5rem;
}

.timeline-highlights li {
  color: var(--text-secondary);
  margin-bottom: 0.5rem;
  line-height: 1.4;
}

@media (max-width: 768px) {
  .timeline-container::before {
    left: 20px;
  }
  
  .timeline-item {
    padding-left: 60px;
  }
  
  .timeline-dot {
    left: 16px;
  }
  
  .timeline-date {
    position: relative;
    left: 0;
    width: auto;
    text-align: left;
    margin-bottom: 1rem;
    font-size: 1.1rem;
  }
}
</style>
