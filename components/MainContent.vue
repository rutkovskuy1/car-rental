<template>
  <div class="main_class">
    <img src="image/image car/backround_car.jpg" class="backround_car">
    <div class="main_text">
      <p class="title_one">ВАША МРІЯ</p> 
      <p class="title_two">НАША РЕАЛЬНІСТЬ!</p>
      <p class="subplot">Оберіть автомобіль, який відповідає <br>вашому стилю та потребам.</p>
    </div>
  <div class="square_button">
  <a href="/cars">
    <p>ДІЗНАТИСЬ БІЛЬШЕ</p>
  </a>
</div>
    <div class="two_block">
      <div class="info_text">
        <p class="how_it_works">ЯК ЦЕ ПРАЦЮЄ</p>
        <p class="buying">Купівля відбувається за наступними етапами</p>
      </div>
      <div class="step">
        <div class="step_item" v-for="(step, index) in steps" :key="index">
          <div class="step_one">
            <img :src="step.icon" class="icon1">
          </div>
          <p class="car_selection">{{ step.title }}</p>
          <p class="car_text_two" v-html="step.description"></p>
        </div>
      </div>
      <div class="square_button_two">
        <p>ПОЧАТИ ПОКУПКУ</p>
      </div>
    </div>
    <div class="block_three">
      <div class="info_text_trendy_cars">
        <p class="trendy_cars">ТРЕНДОВІ АВТОМОБІЛІ</p>
        <p class="suggestions">Найпопулярніші пропозиції з продажу авто</p>
      </div>
      <div class="car">
        <div v-for="(car, index) in cars" :key="index">
          <img :src="car.bgImage">
          <img :src="car.image" :class="car.class">
        </div>
      </div>
      <div class="square_button_three">
        <p>ПЕРЕГЛЯНУТИ БІЛЬШЕ</p>
      </div>
    </div>
    <div class="block_four">
      <div class="info_text_client">
        <p class="our_customers">ЩО ГОВОРЯТЬ НАШІ КЛІЄТИ</p>
        <p class="reviews">Відгуки</p>
      </div>
      <div class="сustomer_reviews">
        <img src="image/Reviews.png" class="reviewss">
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'MainContent',
  data() {
    return {
      steps: [
        {
          icon: 'image/icon/icon1.png',
          title: 'Вибір автомобіля',
          description: 'На цьому етапі покупець<br>переглядає наявні моделі<br>автомобілів'
        },
        {
          icon: 'image/icon/icon2.png',
          title: 'Оформлення автомобіля',
          description: 'Після вибору автомобіля, <br>покупець оформляє документи<br>для покупки'
        },
        {
          icon: 'image/icon/icon3.png',
          title: 'Отримання автомобіля',
          description: 'Після завершення усіх<br>формальностей покупець<br>отримує автомобіль'
        }
      ],
      cars: [
        {
          bgImage: 'image/car/car1.png',
          image: 'image/car/range-rover.png',
          class: 'range_rover',
          buttonClass: 'button_range'
        },
        {
          bgImage: 'image/car/car2.png',
          image: 'image/car/porshe.png',
          class: 'porshe'
        },
          {
          bgImage: 'image/car/car3.png',
          image: 'image/car/bmw.png',
          class: 'bmw'
        }
      ]
    }
  }
}
</script>

<style scoped>
/* Тут ваші стилі для основного контенту */
</style>

