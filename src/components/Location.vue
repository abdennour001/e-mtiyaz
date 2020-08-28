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
            <iframe class="py-4" src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d25578.110244679756!2d3.007740359685106!3d36.74023905819766!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1s%2236B%20Lot%20Petite%20Provence%2C%2016035%20Hydra%2C%20Alger%22!5e0!3m2!1sen!2sdz!4v1598198450093!5m2!1sen!2sdz" width="100%" height="450" frameBorder="0"></iframe>
<!--            <iframe class="py-4" src="https://www.google.com/maps/d/embed?mid=1rVEb_-u7GMsu1Vv1Kv3jJVJuNL0" width="100%" height="450" frameBorder="0"></iframe>-->
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
