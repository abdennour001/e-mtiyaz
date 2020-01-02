<template>
    <section id="home">
      <!--   Navigation section   -->
      <Navigation/>
      <div id="section_home" class="header">
        <div class="header-content">
          <!-- Title Section -->
          <Title/>
        </div>
      </div>
      <div class="hidden">
        <div class="container-fluid m-0 p-0">

          <!-- e-mtiyaz groupe -->
          <section id="e-mtiyazGroupe" class="mt-5">
            <div class="row text-center justify-content-center">
              <div class="col-12">
                <h1 class="display-5" style="text-transform: uppercase">Groupe <span style="text-transform: lowercase;">e-mtiyaz</span></h1>
              </div>
              <div class="col-6 mb-4">
                <hr class="blue">
              </div>
              <div class="col-12 mb-3">
                <h4 style="font-weight: normal;" class="my-4">
                  Accèder aux filiales du groupe e-mtiyaz :
                </h4>
              </div>
            </div>
            <div class="row text-center justify-content-center mt-4 back-groupe">
              <div class="col-12 mb-5">
                <!-- Coaching -->
                <Coaching/>
              </div>
              <div class="col-12 mb-5">
                <!-- Foundation -->
                <Foundation/>
              </div>
              <div class="col-12">
                <!-- Sup -->
                <Sup/>
              </div>
            </div>
          </section>

          <!-- Actualite -->
          <section id="actualite" class="mt-5">
            <div class="row text-center justify-content-center">
              <div class="col-12">
                <h1 class="display-5" style="text-transform: uppercase">Actualité</h1>
              </div>
              <div class="col-6 mb-4">
                <hr class="blue">
              </div>
            </div>
            <div class="row text-center justify-content-center">
              <div class="col-12">
                <Actualite/>
              </div>
            </div>
          </section>
          <!-- Contact -->
          <section id="contact" class="mt-5">
            <div class="row text-center justify-content-center">
              <div class="col-12">
                <Location/>
              </div>
            </div>
          </section>

          <!-- Rendez-vous -->
          <section id="rendez-vous" class="mt-5">
            <div class="row">
              <div class="col-12">
                <RendezVous/>
              </div>
            </div>
          </section>
          <!-- Footer -->
          <section id="footer">
            <div class="row text-center justify-content-center">
              <div class="col-12">
                <Footer/>
              </div>
            </div>
          </section>

        </div>


        <!-- Go up button-->
        <a id="topBtn" href=""><i class="fas fa-arrow-up"/></a>
      </div>
    </section>
</template>

<script>

  import $ from 'jquery';

  import Navigation from './Navigation'
  import Title from './Title'
  import Coaching from './Coaching'
  import Foundation from './Foundation'
  import Sup from './Sup'
  import Actualite from './Actualite'
  import Footer from './Footer'
  import Location from './Location'
  import RendezVous from './RendezVous'
  export default {
    name: 'Home',
    components: { RendezVous, Location, Footer, Actualite, Title, Navigation, Coaching, Foundation, Sup },
    mounted () {

      $(window).scroll(() => {
        if($(window).scrollTop() > 100) {
          $('#topBtn').fadeIn("slow");
        } else {
          $('#topBtn').fadeOut("slow");
        }
      });

      // Scroll up button
      $('#topBtn').click((e) => {
        e.preventDefault();
        $('html, body').animate({
          scrollTop : 0
        }, 800)
      });
    }
  }
</script>

<style lang="scss" scoped>

    @import "../variables.scss";

    .header {
        position: relative;
        margin-top: -65px;
        background: radial-gradient($light-background-color 40%, $dark-background-color 130%);
        height: 100vh;
        overflow: hidden;
    }

    .hidden {
        overflow-x: hidden;
    }

    #topBtn {
        text-decoration: none;
        position: fixed;
        padding-top: .5rem;
        bottom: 40px;
        right: 40px;
        font-size: 22px;
        width: 50px;
        height: 50px;
        border-radius: 100px;
        background: $font-color-light;
        box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
        border: none;
        cursor: pointer;
        color: $dark-blue-color;
        transition: 0.5s ease;
        display: none;
      z-index: 9999;
    }
    #topBtn:hover {
        color: $font-color-light;
        background: $dark-blue-color;
        box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
    }

  .back-groupe {
  }


</style>
