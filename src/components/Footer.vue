<template>
    <footer>
        <div class="container-fluid">
            <div class="row text-center">
                <div class="col-md-12">
                    <div class="d-flex justify-content-center align-items-center mt-2">
                        <img class="logo-image" src="../assets/logo/e-mtiyaz-logo-v3-group-white.png">
                    </div>
                    <hr class="light">
                    <p>05 40 40 51 15</p>
                    <p>excellence@e-mtiyaz.com</p>
                    <p>36B Lot Petite Provence</p>
                    <p>16035 Hydra, Alger</p>
                </div>
                <div class="col-12 my-2">
                    <a class="button" href=""
                       data-toggle="modal" data-target="#exampleModal"
                    >Contactez-nous</a>
                </div>
                <div class="col-12">
                    <hr class="light">
                    <p>&reg; group.e-mtiyaz.com | Tous droits réservés</p>
                </div>
            </div>
        </div>
    </footer>
</template>

<script>
  export default {
    name: 'Footer'
  }
</script>

<style lang="scss" scoped>
    @import '../variables.scss';
    footer {
        background-color: $font-color-dark;
        color: whitesmoke;
        padding-top: 1rem;
        padding-bottom: .7rem;
    }

    .logo-image {
        max-width: 203px;
        margin-right: 10px;
    }
    .display-4 {
        font-size: 1rem;
    }
    .button {
        text-decoration: none;
        border-radius: 200px;
        padding: 10px;
        border: 1px solid $font-color-light;
        color: $font-color-light;
        transition: 0.5s ease;
    }
    .button:hover {
        background: $font-color-light;
        color: $font-color-dark;
    }
</style>
