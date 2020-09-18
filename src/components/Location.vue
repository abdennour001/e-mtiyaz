<template>
    <div class="row text-center" style="margin-top: 2rem;">
        <div class="col-12">
            <h1 class="display-5">Pour plus d'information</h1>
        </div>
        <div class="col-12 mb-4">
            <hr class="blue" style="width: 20%;">
        </div>
        <div class="col-12">
            <h2 class="display-6">Contactez-nous au:</h2>
            <p class="lead">05 40 40 51 15</p>
            <h2 class="display-6">Par email:</h2>
            <p class="lead">excellence@e-mtiyaz.com</p>
            <h2 class="display-6">Siège e-mtiyaz - Alger</h2>
<!--            <p class="lead" style="text-transform: uppercase;">Dar Diaf - 98 Lot Benhaddadi Said</p>-->
            <p class="lead" style="text-transform: uppercase;">36B Lot Petite Provence</p>
<!--            <p class="lead" style="text-transform: uppercase;">16002 Chéraga - Alger</p>-->
            <p class="lead" style="text-transform: uppercase;">16035 Hydra, Alger</p>
        </div>
        <div class="col-12">
            <iframe class="py-4" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3197.2854943531247!2d3.0325340152881872!3d36.73971777996109!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzbCsDQ0JzIzLjAiTiAzwrAwMicwNS4wIkU!5e0!3m2!1sen!2sfr!4v1599428659449!5m2!1sen!2sfr" width="100%" height="450" frameBorder="0"></iframe>
<!--            <iframe class="py-4" src="https://goo.gl/maps/A3GdumgFDxRrQzAa6" width="100%" height="450" frameBorder="0"></iframe>-->
        </div>
    </div>
</template>

<script>
  export default {
    name: 'Location'
  }
</script>

<style lang="scss" scoped>
    @import '../variables.scss';
    strong {
        font-weight: 500;
    }
    .lead {
        font-size: 1.2rem;
        font-weight: 500;
        color: $dark-orange-color;
    }
    .display-6 {
        font-size: 1.3rem;
        color: $font-color-dark;
        font-weight: 400;
    }
    /** media queries **/
    @media screen and (min-width: 992px) { /* large screen */

    }
    @media screen and (max-width: 992px) { /* large screen */
        .display-5 {
            font-size: 2rem;
        }
        .lead {
            font-size: 1.1rem;
        }
    }
    @media screen and (max-width: 768px) { /* medium screen */
        .display-5 {
            font-size: 1.8rem;
        }
        .lead {
            font-size: 1.1rem;
        }
    }
    @media (max-width: 576px) { /* mobile screen */
        .display-5 {
            font-size: 1.4rem;
        }
        .lead {
            font-size: 1rem;
        }
    }
</style>
