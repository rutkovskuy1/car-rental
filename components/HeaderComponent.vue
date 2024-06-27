<template>
  <header class="header">
    <nav class="navigation">
      <ul class="header_list">
        <li><a href="#" @click.prevent="navigate('MainContent')">ГОЛОВНА</a></li>
        <li><a href="#" @click.prevent="navigate('CarCatalog')">АВТОМОБІЛІ</a></li>
        <li><a href="#" @click.prevent="navigate('AboutUs')">ПРО НАС</a></li>
      </ul>
    </nav>
  </header>
</template>

<script>
export default {
  name: 'HeaderComponent',
  methods: {
    navigate(component) {
      this.$emit('navigate', component);
    }
  }
}
</script>
