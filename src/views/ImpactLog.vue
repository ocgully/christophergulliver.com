<template>
  <div class="impact-log">
    <page-header 
      title="Impact Log" 
      subtitle="A record of successes, metrics, and impact from various projects."
    />
    
    <div class="impact-grid">
      <div class="impact-card">
        <div class="impact-header">
          <h3>DraftKings Sportsbook & Casino App</h3>
          <span class="impact-date">2023-Present</span>
        </div>
        <div class="impact-content">
          <p>Led North American Native Mobile Apps teams for DraftKings' flagship Sportsbook & Casino app, successfully managing the critical replatforming from Xamarin to native iOS and Android while scaling the engineering organization.</p>
          <div class="impact-metrics">
            <div class="metric">
              <span class="metric-value">$25M+</span>
              <span class="metric-label">Incremental Revenue</span>
            </div>
            <div class="metric">
              <span class="metric-value">2x</span>
              <span class="metric-label">Team Growth</span>
            </div>
            <div class="metric">
              <span class="metric-value">39+</span>
              <span class="metric-label">Team Members Led</span>
            </div>
          </div>
          <div class="impact-details">
            <button class="details-toggle" @click="toggleDetails('draftkings-sportsbook-casino')">
              <span v-if="!expandedCards.includes('draftkings-sportsbook-casino')">Show Details</span>
              <span v-else>Hide Details</span>
              <i :class="expandedCards.includes('draftkings-sportsbook-casino') ? 'fas fa-chevron-up' : 'fas fa-chevron-down'"></i>
            </button>
            <div class="details-content" v-if="expandedCards.includes('draftkings-sportsbook-casino')">
              <h4>Replatforming Success:</h4>
              <ul>
                <li>Led teams in the successful replatforming from Xamarin to Native iOS and Android, delivering on time</li>
                <li>Generated ~$25M incremental revenue through performance improvements and business continuity</li>
                <li>Reduced iOS cold boot time by 4 seconds and Android cold boot time by 24 seconds</li>
                <li>Decreased Android Application Not Responding (ANR) incidents by 10.75%</li>
                <li>Mitigated business risk associated with Xamarin being sunset</li>
              </ul>
              
              <h4>Team Leadership & Growth:</h4>
              <ul>
                <li>Led 4 North American Native Mobile Apps teams (5 direct reports, ~34 indirect reports)</li>
                <li>Doubled North American team size through strategic hiring and onboarding</li>
                <li>Sourced, interviewed, hired, and onboarded Engineering Managers and Individual Contributors</li>
                <li>Created comprehensive onboarding materials including 30/60/90 day plans for multiple roles</li>
                <li>Developed role expectations and service level agreements aligned with role rubrics</li>
                <li>Mentored direct reports through weekly 1:1s, providing career growth advice and support</li>
              </ul>
              
              <h4>Process & Quality Improvements:</h4>
              <ul>
                <li>Created Definition of Done and Definition of Ready to realign expectations</li>
                <li>Led departmental goal setting to improve predictability, deliverability, and quality</li>
                <li>Introduced sprint demos and standardized processes across teams</li>
                <li>Reinforced agile and lean practices focusing on experimentation and continuous improvement</li>
                <li>Led and participated in quarterly performance calibrations and introduced 9-box methodology</li>
                <li>Standardized Gaming Native PTO process for improved team coordination</li>
              </ul>
              
              <h4>Strategic Initiatives:</h4>
              <ul>
                <li>Led native implementation of backend-driven content management system (CMS)</li>
                <li>Enabled product, design, and operations teams to make changes independent of engineering</li>
                <li>Created cross-functional Sportsbook Domain Expertise documentation</li>
                <li>Developed easy-access BI dashboards for improved visibility</li>
                <li>Led handoff from engineering-led roadmap management to delivery organization</li>
                <li>Co-wrote and presented Sportsbook Native Engineering departmental "All Hands"</li>
              </ul>
              
              <h4>Organizational Impact:</h4>
              <ul>
                <li>Participated in year-end presentations and compensation delivery</li>
                <li>Led promotion boards and performance calibration processes</li>
                <li>Participated in team dynamics interviews to improve collaboration</li>
                <li>Created software engineering general onboarding documentation</li>
                <li>Fostered an environment focused on growth mindset and accountability</li>
                <li>Planned team structure and rollout timing in coordination with business needs</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      <div class="impact-card">
        <div class="impact-header">
          <h3>Slickdeals Mobile App</h3>
          <span class="impact-date">2019-2023</span>
        </div>
        <div class="impact-content">
          <p>Led the Deals and Community Value Stream Teams across multiple platforms, spearheading a successful replatforming initiative while implementing modern engineering practices that significantly improved development efficiency and release predictability.</p>
          <div class="impact-metrics">
            <div class="metric">
              <span class="metric-value">2x</span>
              <span class="metric-label">Developer Effectiveness</span>
            </div>
            <div class="metric">
              <span class="metric-value">10x</span>
              <span class="metric-label">QA Cycle Reduction</span>
            </div>
            <div class="metric">
              <span class="metric-value">5</span>
              <span class="metric-label">Teams Led</span>
            </div>
          </div>
          <div class="impact-details">
            <button class="details-toggle" @click="toggleDetails('slickdeals')">
              <span v-if="!expandedCards.includes('slickdeals')">Show Details</span>
              <span v-else>Hide Details</span>
              <i :class="expandedCards.includes('slickdeals') ? 'fas fa-chevron-up' : 'fas fa-chevron-down'"></i>
            </button>
            <div class="details-content" v-if="expandedCards.includes('slickdeals')">
              <h4>Technical Leadership:</h4>
              <ul>
                <li>Led mobile app replatforming from native iOS/Android to Flutter, achieving 80% cross-platform code sharing</li>
                <li>Introduced CI/CD and DevOps practices to the mobile team, implementing Jenkins with gitflow integration</li>
                <li>Reduced QA release regression time from 5 days to half a day (10x improvement)</li>
                <li>Improved release predictability by reducing 2-5 week cycles to consistent 2-week cycles</li>
                <li>Coordinated integration of automated functional testing into the mobile app pipeline</li>
                <li>Led platform migrations for AB Testing, Analytics, Ads, and performance monitoring tools</li>
              </ul>
              
              <h4>Team & Organization Leadership:</h4>
              <ul>
                <li>Led 5 teams across the Deals and Community Value Streams (20+ engineers across backend, frontend, and mobile)</li>
                <li>Fostered a developer community focused on growth mindset, accountability, and trust</li>
                <li>Developed and implemented team onboarding processes to maximize culture alignment</li>
                <li>Created team charter, career development documentation, and engineering leveling rubric adopted organization-wide</li>
                <li>Mentored team members through bi-weekly 1:1s, providing career growth advice and support</li>
                <li>Coordinated with leadership across multiple teams to prioritize high-value initiatives</li>
              </ul>
              
              <h4>Process Improvement:</h4>
              <ul>
                <li>Implemented small-batch development methodology to optimize continuous integration</li>
                <li>Created best practices for Agile development (grooming, planning, standups, retrospectives)</li>
                <li>Developed spike documentation templates for scope of work, risk assessment, and technical evaluation</li>
                <li>Modified JIRA workflow to focus on small batches for continuous integration</li>
                <li>Established a triage system for handling legacy bugs with priority scoring</li>
                <li>Applied Lean and Agile methodologies during roadmap planning and scrum management</li>
              </ul>
              
              <h4>Recruitment & Team Building:</h4>
              <ul>
                <li>Acted as hiring manager for Deals and Community Value Streams</li>
                <li>Performed candidate outreach and technical screenings for iOS, Android, and QA Automation roles</li>
                <li>Redesigned assessment tests to better evaluate candidates in real-world scenarios</li>
                <li>Created and implemented intern assessment process and onboarding program</li>
                <li>Supplemented team with external partners (Very Good Ventures) for Flutter expertise</li>
                <li>Guided teams to establish identity and culture through team naming and branding</li>
              </ul>
              
              <h4>Business Impact:</h4>
              <ul>
                <li>Participated in 3rd party software contract negotiations, successfully finalizing stalled agreements</li>
                <li>Participated in quarterly roadmap planning and weekly operations meetings with leadership</li>
                <li>Identified and resolved customer service gaps for mobile app feedback</li>
                <li>Implemented KPI dashboards for improved visibility into team performance</li>
                <li>Managed vendor relationships and contracts, including joining the Embrace Customer Advisory Council</li>
                <li>Coordinated with cross-functional stakeholders during the replatforming research and decision process</li>
              </ul>
              
              <h4>Value Streams Led:</h4>
              <ul>
                <li>Brave Mountain - Web</li>
                <li>Breakpoint - Mobile Apps</li>
                <li>Brisket and Lager - Search & Tools</li>
                <li>Wallaby - Community</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      <div class="impact-card">
        <div class="impact-header">
          <h3>Lonch, Inc.</h3>
          <span class="impact-date">2018-Present</span>
        </div>
        <div class="impact-content">
          <p>Served as CTO and CPO for this startup, leading product vision, technical strategy, and team building while developing a comprehensive social collaboration platform with messaging and voting capabilities.</p>
          <div class="impact-metrics">
            <div class="metric">
              <span class="metric-value">2</span>
              <span class="metric-label">Platforms (Mobile & Web)</span>
            </div>
            <div class="metric">
              <span class="metric-value">4</span>
              <span class="metric-label">Core Features</span>
            </div>
            <div class="metric">
              <span class="metric-value">1</span>
              <span class="metric-label">Unified Vision</span>
            </div>
          </div>
          <div class="impact-details">
            <button class="details-toggle" @click="toggleDetails('lonch')">
              <span v-if="!expandedCards.includes('lonch')">Show Details</span>
              <span v-else>Hide Details</span>
              <i :class="expandedCards.includes('lonch') ? 'fas fa-chevron-up' : 'fas fa-chevron-down'"></i>
            </button>
            <div class="details-content" v-if="expandedCards.includes('lonch')">
              <h4>Product & Technical Leadership:</h4>
              <ul>
                <li>Acted as CTO and CPO, guiding the creation of mobile and web applications</li>
                <li>Built comprehensive platform featuring social media experience, collaborative workspaces, direct messaging, and voting</li>
                <li>Developed strategic roadmaps and guided unified product vision</li>
                <li>Created investor pitch decks and business development materials</li>
              </ul>
              
              <h4>Team Building & Management:</h4>
              <ul>
                <li>Recruited and led a team of high-performing engineers and designers</li>
                <li>Established development workflows and collaboration processes</li>
                <li>Mentored team members to align with product vision and technical standards</li>
              </ul>
              
              <h4>Brand & Marketing:</h4>
              <ul>
                <li>Coordinated design and branding of the Lonch platform</li>
                <li>Participated in company PR campaigns with external agency support</li>
                <li>Developed consistent brand identity across all touchpoints</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      <div class="impact-card">
        <div class="impact-header">
          <h3>Disney's Launchpad Framework</h3>
          <span class="impact-date">2013-2015</span>
        </div>
        <div class="impact-content">
          <p>Architected and developed a comprehensive game development framework that reduced friction and increased startup velocity for projects across multiple development teams.</p>
          <div class="impact-metrics">
            <div class="metric">
              <span class="metric-value">90+</span>
              <span class="metric-label">Developers Impacted</span>
            </div>
            <div class="metric">
              <span class="metric-value">3</span>
              <span class="metric-label">Development Teams</span>
            </div>
            <div class="metric">
              <span class="metric-value">Dozens</span>
              <span class="metric-label">Projects & MVPs</span>
            </div>
          </div>
          <div class="impact-details">
            <button class="details-toggle" @click="toggleDetails('launchpad')">
              <span v-if="!expandedCards.includes('launchpad')">Show Details</span>
              <span v-else>Hide Details</span>
              <i :class="expandedCards.includes('launchpad') ? 'fas fa-chevron-up' : 'fas fa-chevron-down'"></i>
            </button>
            <div class="details-content" v-if="expandedCards.includes('launchpad')">
              <h4>Integrated Systems:</h4>
              <ul>
                <li>NUnitLite for robust unit testing</li>
                <li>SQLCipher + SQLite for secure data storage</li>
                <li>Google Play Game Services (IAP)</li>
                <li>Amazon GameCircle (IAP)</li>
                <li>Apple Game Center (IAP)</li>
                <li>LitJson / JsonFX for data serialization</li>
              </ul>
              <h4>Developed Systems:</h4>
              <ul>
                <li>Finite State Machine (FSM) System</li>
                <li>Init System with dependencies, InitManager, and Topological Sorting</li>
                <li>Configurator for easy project setup</li>
                <li>Event Dispatcher for decoupled communication</li>
                <li>Comprehensive Logging System</li>
                <li>SKU/Build Configuration Management</li>
                <li>Age Gate for compliance with regulations</li>
                <li>Native Plugin Harness for platform-specific features</li>
                <li>Cross Platform Cryptography</li>
                <li>Registry System to replace PlayerPrefs using SQLite/SQLCipher with encryption support</li>
                <li>IAP Plugins for Google Play, Amazon, and Game Center</li>
                <li>Achievements System</li>
                <li>Build Systems for streamlined deployment</li>
                <li>iOS Authenticator leveraging HockeyApp for Enterprise provisioning profiles (LASSO)</li>
                <li>Action System using Command Design Pattern</li>
                <li>Asynchronous Background Downloading system</li>
              </ul>
              <h4>Third-Party Integrations:</h4>
              <ul>
                <li>Crittercism for crash reporting</li>
                <li>TestFlight for beta distribution</li>
                <li>Walaber engine</li>
                <li>Burstly / SkyRocket for monetization</li>
                <li>MoPub for advertising</li>
                <li>HockeyApp for distribution</li>
                <li>XUPorter for Xcode project management</li>
                <li>XCodeEditor-For-Unity</li>
              </ul>
              <h4>Tools & Technologies:</h4>
              <ul>
                <li>Jenkins for CI/CD</li>
                <li>Bash Scripting for automation</li>
                <li>CasperJS for testing</li>
                <li>Mac OS, iOS, Xcode, Android Studio, Eclipse</li>
                <li>Microsoft Office and Google Apps</li>
                <li>Charles Proxy for network debugging</li>
                <li>JDGui (Java Decompiler)</li>
                <li>MonoDevelop and Unity3D</li>
              </ul>
              <h4>Activities:</h4>
              <ul>
                <li>Profiling using Xcode Instruments</li>
                <li>DevCenter / Provisioning Profiles management</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      <div class="impact-card">
        <div class="impact-header">
          <h3>Tap Slots</h3>
          <span class="impact-date">2015-2019</span>
        </div>
        <div class="impact-content">
          <p>As Director of Engineering, led technical strategy and operations across multiple studios globally, transforming development processes and infrastructure while shipping 6 successful mobile casino games.</p>
          <div class="impact-metrics">
            <div class="metric">
              <span class="metric-value">70%</span>
              <span class="metric-label">Infrastructure Cost Reduction</span>
            </div>
            <div class="metric">
              <span class="metric-value">83%</span>
              <span class="metric-label">Load Time Improvement</span>
            </div>
            <div class="metric">
              <span class="metric-value">75%</span>
              <span class="metric-label">App Size Reduction</span>
            </div>
          </div>
          <div class="impact-details">
            <button class="details-toggle" @click="toggleDetails('tapslots')">
              <span v-if="!expandedCards.includes('tapslots')">Show Details</span>
              <span v-else>Hide Details</span>
              <i :class="expandedCards.includes('tapslots') ? 'fas fa-chevron-up' : 'fas fa-chevron-down'"></i>
            </button>
            <div class="details-content" v-if="expandedCards.includes('tapslots')">
              <h4>Technical Leadership:</h4>
              <ul>
                <li>Directed migration from Softlayer to AWS infrastructure, reducing costs by 70% in the first year</li>
                <li>Optimized loading times on low-end Android devices from >60 seconds to <10 seconds</li>
                <li>Reduced app size by 75% (from ~200MB to ~50MB) while adding new content through external asset bundles</li>
                <li>Converted monolithic codebase into a package-based distributed architecture for multi-team development</li>
                <li>Implemented comprehensive CI/CD pipeline with Jenkins for automated building and SKU management</li>
                <li>Led Parse backend migration to a custom Data Injection Protocol</li>
              </ul>
              
              <h4>Team Leadership:</h4>
              <ul>
                <li>Managed distributed engineering teams across Las Vegas, Perth (Australia), and Kiev (Ukraine)</li>
                <li>Established engineering best practices and workflows across all studios</li>
                <li>Developed technical specifications for both in-house and outsourced development</li>
                <li>Created and implemented engineering candidate assessment process</li>
                <li>Mentored software engineers in SOLID principles, design patterns, and problem-solving approaches</li>
                <li>Coordinated with external QA team (Sculpin QA) to improve quality assurance processes</li>
              </ul>
              
              <h4>Infrastructure Management:</h4>
              <ul>
                <li>Administered critical development tools: Jira, Confluence, Perforce, Git, Jenkins, Nexus</li>
                <li>Managed cloud infrastructure on AWS EC2</li>
                <li>Implemented and managed analytics platforms: Amplitude, Adjust, Tenjin</li>
                <li>Established secure email infrastructure with DMARC, DKIM, and SPF protocols</li>
                <li>Led GDPR compliance initiative across all products</li>
              </ul>
              
              <h4>Product Development:</h4>
              <ul>
                <li>Lead Implementation of the Slot Machine Framework, which used a deterministic system for creating slot machines, and no-code implementation for skinning variants of math models.</li>
                <li>Guided implementation of key game systems: cross-promotion, embedded asset bundles, advertising facade</li>
                <li>Developed user profile system and debug menu architecture</li>
                <li>Implemented puzzle mechanics and directed shader development</li>
                <li>Created and managed product roadmaps for future features</li>
                <li>Prioritized development tasks and bug fixes across multiple products</li>
              </ul>
              
              <h4>Shipped Titles:</h4>
              <ul>
                <li>Slots of Fame (2015)</li>
                <li>Wild Triple Slots (2016)</li>
                <li>7 Kings Casino Slots (2015)</li>
                <li>Vegas Cherry Slots (2019)</li>
                <li>Slot Galaxy - Unity port from Adobe Flash (2019)</li>
                <li>Classic Slot Galaxy - Unity port from Adobe Flash (2019)</li>
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
