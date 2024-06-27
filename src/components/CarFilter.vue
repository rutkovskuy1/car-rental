<template>
  <div class="car-filter">
    <h1>Фільтр автомобілів</h1>
    <form @submit.prevent="filterCars" class="filter-form">
      <div class="form-group">
        <label for="brand">Марка:</label>
        <select v-model="brand" class="form-control">
          <option value="">Всі</option>
          <option value="mercedes">Mercedes</option>
          <option value="bmw">BMW</option>
          <option value="audi">Audi</option>
          <option value="toyota">Toyota</option>
          <option value="ford">Ford</option>
        </select>
      </div>
      <div class="form-group">
        <label for="minPrice">Мінімальна ціна:</label>
        <input type="number" v-model="minPrice" id="minPrice" class="form-control">
      </div>
      <div class="form-group">
        <label for="maxPrice">Максимальна ціна:</label>
        <input type="number" v-model="maxPrice" id="maxPrice" class="form-control">
      </div>
      <button type="submit" class="btn-primary">Пошук</button>
    </form>
    <div v-if="cars.length" class="results">
      <h2>Результати:</h2>
      <ul>
        <li v-for="car in cars" :key="car.id">
          {{ car.brand }} {{ car.model }} - {{ car.price }}$
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'CarFilter',
  data() {
    return {
      brand: '',
      minPrice: '',
      maxPrice: '',
      cars: []
    };
  },
  methods: {
    async filterCars() {
      try {
        const response = await axios.get('http://localhost:3000/cars', {
          params: {
            brand: this.brand,
            minPrice: this.minPrice,
            maxPrice: this.maxPrice
          }
        });
        this.cars = response.data;
      } catch (error) {
        console.error('Error fetching cars:', error);
      }
    }
  }
};
</script>

<style scoped>
.car-filter {
  font-family: 'Montserrat', sans-serif;
  color: #ffffff;
  background-color: #222222;
  padding: 20px;
  margin: 20px;
  border-radius: 8px;
  margin-left: 130px;
}

.car-filter h1 {
  font-size: 28px;
  font-weight: 700;
  margin-bottom: 20px;
  margin-top: 40px;
}

.filter-form {
  display: flex;
  flex-wrap: wrap;
  gap: 55px;
}


.form-control {
  width: 100%;
  padding: 8px;
  border: 1px solid #ffffff;
  background-color: #343434;
  color: #ffffff;
  border-radius: 4px;
  width: 130px;
}

.form-control:focus {
  outline: none;
  border-color: #FF7B01;
}

.btn-primary {
  background-color: #FF7B01;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  cursor: pointer;
  border-radius: 4px;
  font-size: 16px;
}

.btn-primary:hover {
  background-color: #ff9555;
}

.results {
  margin-top: 20px;
}

.results h2 {
  font-size: 24px;
  font-weight: 700;
  margin-bottom: 10px;
}

.results ul {
  list-style: none;
  padding: 0;
}

.results li {
  font-size: 18px;
  margin-bottom: 10px;
}
</style>
