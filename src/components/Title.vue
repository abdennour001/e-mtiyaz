<template>
    <div id="title" class="container-fluid">
        <div class="row">
            <div class="col-lg-6 offset-lg-3 col-md-12 col-sm-12">
                <div class="col-12 mt-5">
                    <img class="logo-img" src="../assets/logo/e-mtiyaz-logo-v3-group-white.png"/>
                </div>
                <div class="col-12 margin-3">
                    <p class="lead">
                      Depuis 2013, e-mtiyaz oeuvre à faire de l'Algérie une terre d'excellence, aux côtés d'étudiants, de parents d'élèves, d'élèves et de partenaires institutionnels du secteur de l'éducation.
                    </p>
                </div>
            </div>
        </div>
    </div>
</template>

<script>

  export default {
    name: 'Title'
  }
</script>

<style lang="scss" scoped>
    @import '../variables.scss';
    #title {
        color: $font-color-light;
        margin-top: 140px;
    }

    .margin-1 {
        margin-top: 10px;
    }
    .margin-2 {
        margin-top: 20px;
    }
    .margin-3 {
        margin-top: 40px;
    }

    @media screen and (min-width: 992px) { /* medium screen */
        .logo-img {
            width: 70%;
        }
    }
    @media screen and (max-width: 992px) { /* medium screen */
        .logo-img {
            width: 35%;
        }
    }
    @media screen and (max-width: 772px) and (min-width: 500px) { /* tablet screen */
        .lead {
            font-size: 1.3rem;
        }
    }

    @media screen and (max-width: 654px) and (min-width: 332px) {
        .logo-img {
            width: 80%;
        }
        .lead {
            font-size: 1.2rem;
        }
    }

    @media screen and (max-width: 332px) {
        .logo-img {
            width: 85%;
        }
        .lead {
            font-size: 1.1rem;
        }
    }

</style>
