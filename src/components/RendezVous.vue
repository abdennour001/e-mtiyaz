<template>
    <div class="container-fluid jumbotron m-0">
        <div class="row text-center my-form">
            <div class="col-12" style="padding: 0">
                <div id="nanobar-rendez-vous"></div>
            </div>
            <div class="col-12 text-center squeeze-75">
                <p class="lead">Envoyez-nous un message !</p>
            </div>
            <form id="contact" method="post" class="squeeze-50">
                <div class="form-row">
                    <div class="form-group col-md-6 text-left">
                        <input v-model="nom" type="text" class="form-control" id="nom" placeholder="Nom">
                        <label v-if="!nom && firstSubmit" for="nom" class="text-danger" style="padding: 0; margin: 0;padding-left: 13px">Champ requis</label>
                    </div>
                    <div class="form-group col-md-6 text-left mb-4">
                        <input v-model="email" type="email" class="form-control" id="email" placeholder="Email">
                        <label v-if="!email && firstSubmit" for="email" class="text-danger" style="padding: 0; margin: 0;padding-left: 13px">Champ requis</label>
                    </div>
                    <div class="form-group col-md-6 text-left">
                        <input v-model="prenom" type="text" class="form-control" id="prenom" placeholder="Prenom">
                        <label v-if="!prenom && firstSubmit" for="prenom" class="text-danger" style="padding: 0; margin: 0;padding-left: 13px">Champ requis</label>
                    </div>
                    <div class="form-group col-md-6 text-left mb-4">
                        <input v-model="tel" type="tel" class="form-control" id="telephone" placeholder="Téléphone">
                        <label v-if="!tel && firstSubmit" for="telephone" class="text-danger" style="padding: 0; margin: 0;padding-left: 13px">Champ requis</label>
                    </div>
                    <div class="form-group col-md-12 text-left mb-4">
                      <textarea v-model="msg" rows="5" type="text" class="form-control" id="msg" placeholder="Votre message..."></textarea>
                        <label v-if="!msg && firstSubmit" for="msg" class="text-danger" style="padding: 0; margin: 0;padding-left: 13px">Champ requis</label>
                    </div>
                </div>
                <div id="rendezVousB">
                    <button type="button" @click="contactCall" class="button w-100">Envoyer</button>
                </div>
                <div v-if="success" class="alert-success" style="height: 45px; padding-top: 10px; margin-top: 10px; border-radius: 100px">Vous avez envoyé la demande avec succès</div>
            </form>
        </div>
    </div>
</template>

<script>
  import $ from 'jquery';
  import ScrollReveal from 'scrollreveal';
  export default {
    name: 'RendezVous',
    data() {
      return {
        nom: '',
        prenom: '',
        email:'',
        tel:'',
        msg: '',
        firstSubmit: false,
        success: false
      }
    },
    mounted() {

      $(document).ready(function() {
        window.sr = ScrollReveal({ reset: false });
        sr.reveal('#nom', {
          duration: 1000,
          origin: 'left',
          delay: 500,
          distance: '100px'
        })
        sr.reveal('#email', {
          duration: 1000,
          origin: 'right',
          delay: 500,
          distance: '100px'
        })
        sr.reveal('#prenom', {
          duration: 1000,
          origin: 'left',
          delay: 250,
          distance: '100px'
        })
        sr.reveal('#telephone', {
          duration: 1000,
          origin: 'right',
          delay: 250,
          distance: '100px'
        })
        sr.reveal('#msg', {
          duration: 1000,
          origin: 'right',
          distance: '100px'
        });
        sr.reveal('#rendezVousB', {
          duration: 1000,
          origin: 'bottom',
          delay: 500,
          distance: '100px'
        })
      });
    },
    methods: {
      contactCall() {
        this.firstSubmit = true;
        if (this.nom && this.prenom && this.email && this.tel && this.msg) {
          let data = new FormData();
          data.append('nom', this.nom);
          data.append('prenom', this.prenom);
          data.append('email', this.email);
          data.append('telephone', this.telephone);
          data.append('msg', this.msg);

          // loading
          let options = {
            id: 'my-id',
            target: document.getElementById('nanobar-rendez-vous')
          };
          let Nanobar = require('nanobar');
          let nanobar = new Nanobar( options );
          //move bar
          nanobar.go( 30 ); // size bar 30%

          // to use : await sleep(ms)
          function sleep(ms) {
            return new Promise(resolve => setTimeout(resolve, ms));
          }

          this.axios.post("http://localhost:8888/API/contact/contact.php", data)
            .then(async response => {
              if (response.data.includes('Message has been sent')) {
                this.success = true
                nanobar.go(50);
                nanobar.go(55);
                nanobar.go(80);
                nanobar.go(100);
                await sleep(5000);
                this.success = false;
              } else {
                alert('something goes wrong...')
              }
            })
            .catch(e => {
              console.error(e);
            });
        }
      }
    }
  }
</script>

<style lang="scss" scoped>
    @import '../variables.scss';
    .jumbotron {
        background: url("../assets/background/rendez-vous-bg-tran.png") no-repeat center;
        background-size: cover;
    }
    .lead {
        font-size: 2rem;
        font-weight: 500;
    }
    .squeeze-75 {
      width: 75%;
      margin: 0 auto;
      padding-top: 2rem;
    }
    .button {
        text-decoration: none;
        border-radius: 200px;
        padding: 10px;
        border: 1px solid $dark-blue-color;
        color: $dark-blue-color;
        background-color: transparent;
        transition: 0.5s ease;
    }
    .button:hover {
        background: $medium-blue-color;
        color: $font-color-light;
    }
    input {
        border-radius: 200px;
    }
    .form-control {
        font-size: .9rem;
    }
    label {
        font-size: .9rem;
    }
    .my-form {
        padding-bottom: 2rem;
        background-color: rgba(255, 255, 255, 0.8);
        box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.3);
    }
    /** media queries **/
    @media screen and (min-width: 992px) { /* large screen */

    }
    @media screen and (max-width: 992px) { /* large screen */
        .display-5 {
            font-size: 2rem;
        }
        .lead {
            font-size: 1.4rem;
        }
    }
    @media screen and (max-width: 768px) { /* medium screen */
        .display-5 {
            font-size: 1.8rem;
        }
        .lead {
            font-size: 1.3rem;
        }
    }
    @media (max-width: 576px) { /* mobile screen */
        .display-5 {
            font-size: 1.5rem;
        }
        .lead {
            font-size: 1.1rem;
        }
    }
</style>
