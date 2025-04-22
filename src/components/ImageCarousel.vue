<template>
  <div class="carousel-container">
    <div class="carousel-slides" ref="slideContainer">
      <div 
        v-for="(image, index) in images" 
        :key="index" 
        class="carousel-slide"
        :class="{ active: currentIndex === index }"
        :style="{ transform: `translateX(${100 * (index - currentIndex)}%)` }"
      >
        <img :src="image.image || image" :alt="image.caption || ''" class="carousel-image">
        <p v-if="image.caption" class="carousel-caption">{{ image.caption }}</p>
      </div>
    </div>
    
    <div v-if="images.length > 1" class="carousel-controls">
      <button @click="prevSlide" class="carousel-control prev" aria-label="Previous slide">
        <i class="fas fa-chevron-left"></i>
      </button>
      <div class="carousel-indicators">
        <button 
          v-for="(_, index) in images" 
          :key="index"
          @click="goToSlide(index)"
          class="carousel-indicator"
          :class="{ active: currentIndex === index }"
          :aria-label="`Go to slide ${index + 1}`"
        ></button>
      </div>
      <button @click="nextSlide" class="carousel-control next" aria-label="Next slide">
        <i class="fas fa-chevron-right"></i>
      </button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'ImageCarousel',
  props: {
    images: {
      type: Array,
      required: true
    }
  },
  data() {
    return {
      currentIndex: 0,
      touchStartX: 0,
      touchEndX: 0
    };
  },
  mounted() {
    const slideContainer = this.$refs.slideContainer;
    
    // Add touch event listeners for mobile swipe
    if (slideContainer) {
      slideContainer.addEventListener('touchstart', this.handleTouchStart, false);
      slideContainer.addEventListener('touchend', this.handleTouchEnd, false);
    }
  },
  beforeUnmount() {
    const slideContainer = this.$refs.slideContainer;
    
    // Remove event listeners
    if (slideContainer) {
      slideContainer.removeEventListener('touchstart', this.handleTouchStart);
      slideContainer.removeEventListener('touchend', this.handleTouchEnd);
    }
  },
  methods: {
    prevSlide() {
      this.currentIndex = this.currentIndex > 0 ? this.currentIndex - 1 : this.images.length - 1;
    },
    nextSlide() {
      this.currentIndex = this.currentIndex < this.images.length - 1 ? this.currentIndex + 1 : 0;
    },
    goToSlide(index) {
      this.currentIndex = index;
    },
    handleTouchStart(event) {
      this.touchStartX = event.touches[0].clientX;
    },
    handleTouchEnd(event) {
      this.touchEndX = event.changedTouches[0].clientX;
      this.handleSwipe();
    },
    handleSwipe() {
      const swipeThreshold = 50; // Minimum distance to register as a swipe
      const swipeDistance = this.touchEndX - this.touchStartX;
      
      if (swipeDistance > swipeThreshold) {
        // Swiped right, go to previous slide
        this.prevSlide();
      } else if (swipeDistance < -swipeThreshold) {
        // Swiped left, go to next slide
        this.nextSlide();
      }
    }
  }
};
</script>

<style scoped>
.carousel-container {
  position: relative;
  width: 100%;
  overflow: hidden;
  border-radius: 12px;
  margin-bottom: 1.5rem;
}

.carousel-slides {
  display: flex;
  height: 100%;
  width: 100%;
}

.carousel-slide {
  min-width: 100%;
  position: relative;
  transition: transform 0.5s ease;
}

.carousel-image {
  width: 100%;
  height: auto;
  object-fit: cover;
  display: block;
}

.carousel-caption {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: rgba(0, 0, 0, 0.7);
  color: white;
  padding: 0.75rem;
  margin: 0;
  font-size: 0.875rem;
}

.carousel-controls {
  display: flex;
  justify-content: space-between;
  align-items: center;
  position: absolute;
  bottom: 1rem;
  left: 1rem;
  right: 1rem;
}

.carousel-control {
  background-color: rgba(0, 0, 0, 0.5);
  color: white;
  border: none;
  border-radius: 50%;
  width: 2.5rem;
  height: 2.5rem;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.carousel-control:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

.carousel-indicators {
  display: flex;
  gap: 0.5rem;
}

.carousel-indicator {
  width: 0.75rem;
  height: 0.75rem;
  border-radius: 50%;
  background-color: rgba(255, 255, 255, 0.5);
  border: none;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.carousel-indicator.active {
  background-color: white;
}

@media (max-width: 768px) {
  .carousel-control {
    width: 2rem;
    height: 2rem;
  }
  
  .carousel-indicator {
    width: 0.5rem;
    height: 0.5rem;
  }
}
</style>
