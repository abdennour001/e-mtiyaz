<template>
  <div class="container-fluid p-0 m-0 jumbotron vertical-align main-container" style="height: 70vh;">
    <div class="row">
      <div class="col-6">
        <div class="row justify-content-center">
          <div class="col-12">
            <h1 class="display-4 text-center">e-mtiyaz Coaching</h1>
            <p class="lead">
              centre éducatif <strong>d'excellence</strong>.
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
        <div class="logo">
          <a href="#">
            <img src="../assets/logo/e-mtiyaz-logo-v3-coaching.png" class="i m-3" alt="">
          </a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Coaching'
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
    transition: 0.3s ease-in;
  }
  .button:hover {
    .fa-arrow-alt-circle-right {
      transform: translateX(15px);
    }
  }

  .i {
    width: 40%;
  }

  .logo {
    position: relative;
    z-index: 1;
  }

  .logo:after {
    content: '';
    z-index: -1;
    display: block;
    height: 100%;
    width: 1000%;
    position:absolute;
    left:20%;
    top:0%;
    background: white;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.6);
    transform: skewX(-30deg);
  }

  .jumbotron {
    background: url("../assets/img/img-services-1.png") center no-repeat;
    background-size: cover;
  }

  .display-4 {
    font-size: 2em;
  }

  .main-container {
    position: relative;
    z-index: 1;
    overflow: hidden;
  }

  .main-container:before {
    content: ' ';
    z-index: -1;
    display: block;
    height: 100%;
    width: 100%;
    position:absolute;
    left:-55%;
    top:0%;
    background: white;
    box-shadow: 2px 0 5px rgba(0, 0, 0, 0.6);
    transform: skewX(-30deg);
  }

</style>
