import { defineStore } from 'pinia'

export const useDataStore = defineStore('data', {
  state: () => ({
    projects: [],
    articles: [],
    books: [],
    gardenProjects: {
      active: [],
      ideas: [],
      graveyard: []
    },
    gardenProjectIds: {
      active: [],
      ideas: [],
      graveyard: []
    }
  }),
  actions: {
    async fetchData() {
      try {
        // Load projects data
        const projectsModule = await import('../data/projects.json');
        this.projects = projectsModule.default;
        
        // Load garden project IDs
        const gardenModule = await import('../data/project-garden.json');
        this.gardenProjectIds = gardenModule.default;
        
        // Filter garden projects based on IDs from project-garden.json
        this.gardenProjects = {
          active: this.projects.filter(project => this.gardenProjectIds.active.includes(project.id)),
          ideas: this.projects.filter(project => this.gardenProjectIds.ideas.includes(project.id)),
          graveyard: this.projects.filter(project => this.gardenProjectIds.graveyard.includes(project.id))
        };
        
        // Load articles data
        const articlesModule = await import('../data/articles.json');
        this.articles = articlesModule.default;
        
        // Load books data
        const booksModule = await import('../data/books.json');
        this.books = booksModule.default.books;
      } catch (error) {
        console.error('Error loading data:', error);
      }
    }
  },
  getters: {
    // Get only regular projects (not garden projects)
    regularProjects: (state) => state.projects.filter(project => project.type === 'project')
  }
})
