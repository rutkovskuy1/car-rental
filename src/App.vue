<template>
  <div id="app">
    <HeaderComponent @navigate="navigate"/>
    <component :is="currentComponent"></component>
    <FooterComponent />
  </div>
</template>

<script>
import HeaderComponent from './components/HeaderComponent.vue';
import FooterComponent from './components/FooterComponent.vue';
import MainContent from './components/MainContent.vue';
import CarCatalog from './components/CarCatalog.vue'; 
import AboutUs from './components/AboutUs.vue'; 

export default {
  name: 'App',
  components: {
    HeaderComponent,
    FooterComponent,
    MainContent,
    CarCatalog ,
    AboutUs
  },
  data() {
    return {
      currentComponent: 'MainContent'
    };
  },
  methods: {
    navigate(component) {
      this.currentComponent = component;
    }
  }
}
</script>

