import { createApp } from 'vue'
import App from './App.vue'

createApp(App).mount('#app')


export default {
  methods: {
    navigateToCars() {
      window.location.href = '/cars';
    }
  }
}
