<template>
  <div class="container-fluid jumbotron vertical-align main-container" style="height: 75vh">
    <div class="row">
      <div class="col-md-6 col-lg-6 col-sm-12 mb-4">
        <div class="row justify-content-center">
          <div class="col-12 e-mtiyaz-title">
            <h1 class="display-4 text-center">e-mtiyaz Sup <br> (ex-Dirasat International) </h1>
<!--            <p class="lead">-->
<!--              études à l'<strong>Etranger</strong>.-->
<!--            </p>-->
          </div>
          <div class="col-9 text-muted">
            e-mtiyaz Group et sa filiale Dirasat International ont pour mission d'accompagner les étudiants internationaux aux études supérieures et à les conduire aux meilleures opportunités. Avec Dirasat International, les études à l’étranger ne sont plus un rêve inaccessible mais un projet en passe de devenir réalité !
<!--            Un accompagnement complet, allant du conseil d'orientation au suivi sur place permettant à l'étudiant et sa famille de réussir dans leur projet d'études supérieures à l'international.-->
          </div>
          <div class="col-12 mt-2 visit-button">
            <a class="button"
               href="https://www.dirasat-international.com/"
               target="_blank"
            data-tool-tip="www.dirasat-international.com">
              Accéder au site d'e-mtiyaz Sup
              <i class="fas fa-arrow-alt-circle-right align-middle ml-2" style="font-size: 1.7rem"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-6 col-sm-12">
        <div class="logo">
          <a   href="https://www.dirasat-international.com/"
               target="_blank">
            <img src="../assets/logo/e-mtiyaz-logo-v3-sup.png" class="i m-3" alt="">
          </a>
        </div>
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
    left: 70%;
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
    width: 40%;
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
    box-shadow: 2px 0 5px rgba(0, 0, 0, 0.4);
    transform: skewX(30deg);
  }


  /** media queries **/
  @media screen and (max-width: 1478px) and (min-width: 1305px) { /* large screen */
    .display-4 {
      font-size: 1.8em;
    }
  }
  @media screen and (max-width: 992px) { /* large screen */
    .display-4 {
      font-size: 2em;
    }
  }
  @media screen and (max-width: 768px) { /* medium screen */
    .display-4 {
      font-size: 2em;
    }
  }
  @media (max-width: 576px) { /* mobile screen */
    .display-4 {
      font-size: 2em;
    }
    .main-container:before {
      left:-10%;
      width: 120%;
      opacity: .95;
      height: 101%;
      transform: skewX(30deg);
    }
    .logo:after {
      display: none;
    }
    .i {
      width: 65%;
    }
    .button {
      font-size: 1em;
      width: 100%;
    }
    .e-mtiyaz-title {
      margin-top: 2rem;
    }
    .e-mtiyaz-title {
      font-size: .8rem;
    }
  }

</style>
