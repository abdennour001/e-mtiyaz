<template>
  <div class="container-fluid p-0 m-0 jumbotron vertical-align main-container" style="height: 70vh">
    <div class="row">
      <div class="col-6">
        <div class="row justify-content-center">
          <div class="col-12">
            <h1 class="display-4 text-center">e-mtiyaz Foundation</h1>
            <p class="lead">
              promotion de l'insertion <strong>professionnelle</strong> des étudiants.
            </p>
          </div>
          <div class="col-12 mt-2">
            <a class="button"
               href="http://foundation.e-mtiyaz.com"
            target="_blank"
            data-tool-tip="foundation.e-mtiyaz.com">
              Visitez-nous
              <i class="fas fa-arrow-alt-circle-right align-middle ml-2" style="font-size: 1.7rem"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="col-6">
        <div class="logo">
          <a     href="http://foundation.e-mtiyaz.com"
                 target="_blank">
            <img src="../assets/logo/e-mtiyaz-logo-v3-foundation.png" class="i m-3" alt="">
          </a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Foundation'
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


  .button[data-tool-tip]::after {
    content: attr(data-tool-tip);
    background: $dark-blue-color;
    box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.3);
    color: #fff;
    position: absolute;
    display: block;
    top: 0%;
    left: 0;
    white-space: nowrap;
    border-radius: 5px;
    font-size: .9rem;
    padding: .2rem;
    transform: scale(0);
    transition:
      transform 0.2s,
      left 0.5s;
  }

  .button[data-tool-tip]:hover::after {
    transform: scale(1);
    left: 65%;
  }

  .fa-arrow-alt-circle-right {
    transition: 0.3s ease-out;
  }
  .button:hover {
    .fa-arrow-alt-circle-right {
      transform: translateX(15px);
    }
  }

  .logo {
    position: relative;
    z-index: 1;
    transition: 0.25s ease;
    cursor: pointer;
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
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.4);
    transform: skewX(30deg);
  }

  .logo:hover {
    transform: translate(-20px);
  }

  .i {
    width: 40%;
  }

  .jumbotron {
    background: url("../assets/img/coaching-kraków.jpeg") center no-repeat;
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
    height: 101%;
    width: 100%;
    position:absolute;
    left:-55%;
    top:0%;
    background: white;
    box-shadow: 2px 0 5px rgba(0, 0, 0, 0.4);
    transform: skewX(30deg);
  }

</style>
