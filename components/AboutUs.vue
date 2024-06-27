<template>
<div class="about_us">
    <p class="About">Про нас</p>
    <p class="text_one">
        Наша команда складається з висококваліфікованих фахівців з великим <br>
        досвідом у сфері автомобільної індустрії. Ми працюємо разом, щоб <br>
        забезпечити вам найкращий сервіс та підтримку на кожному етапі вашої <br>
        покупки.
    </p>
</div>

<div class="two">
    <p class="our_values">Наші цінності</p>
    <p class="text_two">
        Якість і надійність <br>
        Професіоналізм та етика <br>
        Клієнтоорієнтованість <br>
        Інновації та технології <br>
    </p>
</div>

<div class="three">
    <p class="history">Історія нашої компанії</p>
    <p class="text_three">
        Наша компанія була заснована у 2005 році з метою надання <br>
        високоякісних автомобілів та відмінного обслуговування клієнтів. <br>
        Спочатку ми починали як невеликий автосалон, але завдяки нашій <br>
        відданості справі та прагненню до інновацій, ми швидко виросли <br>
        та стали одним з лідерів ринку. 
    </p>
</div>


</template>

<script>
export default {
  name: 'AboutUs',
};
</script>

<style scoped>

.about_us{
  width: 100%;
  height: 250px;
  margin-top: 50px;
  background-color: #343434;
}

.About{
  font-family: 'Montserrat', sans-serif;
  font-size: 28px;
  font-weight: 700;
  color: #FF7B01;
  padding-top: 45px;
  padding-left: 158px;
}

.text_one{
  font-family: 'Montserrat', sans-serif;
  font-size: 20px;
  color: #ffffff;
  padding-top: 20px;
  padding-left: 158px;
}

.our_values{
  font-family: 'Montserrat', sans-serif;
  font-size: 28px;
  font-weight: 700;
  color: #FF7B01;
  padding-top: 70px;
  padding-left: 158px;
}

.text_two{
  font-family: 'Montserrat', sans-serif;
  font-size: 20px;
  color: #ffffff;
  padding-top: 20px;
  padding-left: 158px;
}


.three{
  width: 100%;
  height:300px;
  margin-top: 70px;
  background-color: #343434;
}

.history{
  font-family: 'Montserrat', sans-serif;
  font-size: 28px;
  font-weight: 700;
  color: #FF7B01;
  padding-top: 70px;
  padding-left: 158px;
}

.text_three{
  font-family: 'Montserrat', sans-serif;
  font-size: 20px;
  color: #ffffff;
  padding-top: 20px;
  padding-left: 158px;
  margin-bottom:300px;
}
</style>
