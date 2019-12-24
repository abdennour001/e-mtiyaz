<template>
  <div class="container-fluid jumbotron vertical-align" style="height: 70vh">
    <div class="row">
      <div class="col-6">
        <div class="row justify-content-center">
          <div class="col-12">
            <h1 class="display-4 text-center">e-mtiyaz Sup (ex-Dirasat International) </h1>
            <p class="lead">
              études à l'<strong>Etranger</strong>.
            </p>
          </div>
          <div class="col-12 mt-2">
            <a class="button"
               data-toggle="modal" data-target="#exampleModal"
               href="#">
              Contactez-nous
              <i class="fas fa-arrow-alt-circle-right align-middle ml-2" style="font-size: 1.7rem"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="col-6">
        <a href="#">
          <img src="../assets/logo/e-mtiyaz-logo-v3-sup.png" class="i m-3" alt="">
        </a>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Sup'
  }
</script>

<style lang="scss" scoped>

  @import '../variables.scss';

  .button {
    display: inline-block;
    text-decoration: none;
    font-size: 1.1em;
    font-weight: 400;
    width: 40%;
    color: $dark-blue-color;
    transition: 0.5s ease;
  }

  .fa-arrow-alt-circle-right {
    transition: 0.3s ease-out;
  }
  .button:hover {
    .fa-arrow-alt-circle-right {
      transform: translateX(15px);
    }
  }

  .i {
    width: 50%;
  }

  .jumbotron {
  }

  .display-4 {
    font-size: 2em;
  }

</style>
