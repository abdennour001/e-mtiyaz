<template>
    <nav class="navbar navbar-expand-lg navbar-light sticky-top navbar-default">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <div class="d-flex align-items-center">
                    <img id="logo-image" class="logo-image w-75 mx-md-2 mx-sm-2" src="../assets/logo/e-mtiyaz-logo-v3-group.png">
                </div>
            </a>
            <button class="navbar-toggler toggler-example" type="button" data-toggle="collapse" data-target="#navBarResponsive">
                <span class="dark-blue-text"><i class="fas fa-bars fa-1x"></i></span>
            </button>
            <div class="collapse navbar-collapse" id="navBarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li id="li-1" class="nav-item active">
                        <a class="nav-link scrollTo" href="" data-scroll="#section_home">Accueil</a>
                    </li>
                    <li id="li-2" class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownAbout" role="button" data-hover="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Groupe e-mtiyaz <i class="fas fa-angle-down ml-2"></i>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownAbout">
                            <li><a class="dropdown-item" href="http://coaching.e-mtiyaz.com" target="_blank">e-mtiyaz Coaching</a></li>
                            <li><a class="dropdown-item" href="http://foundation.e-mtiyaz.com" target="_blank">e-mtiyaz Foundation</a></li>
                            <li><a class="dropdown-item" href="https://www.dirasat-international.com/" target="_blank">e-mtiyaz Sup</a></li>
                        </ul>
                    </li>
                    <li id="li-3" class="nav-item">
                        <a class="nav-link scrollTo" href="#" data-scroll="#actualite">Actualité</a>
                    </li>
                    <li id="li-4" class="nav-item">
                        <a class="nav-link scrollTo" href="#" data-scroll="#contact">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</template>

<script>

  import $ from 'jquery'
import ScrollReveal from 'scrollreveal'

export default {
    name: 'Navigation',
    data () {
      return {
        white: true
      }
    },
    mounted () {
      $(document).ready(function () {
        window.sr = ScrollReveal({ reset: false })
      sr.reveal('#logo-image', {
          duration: 1000,
          origin: 'left',
          distance: '300px'
        })
        sr.reveal('#li-1', {
          duration: 1000,
          origin: 'top',
          delay: 100,
          distance: '50px'
        })
        sr.reveal('#li-2', {
          duration: 1000,
          origin: 'top',
          delay: 200,
          distance: '50px'
        })
        sr.reveal('#li-3', {
          duration: 1000,
          origin: 'top',
          delay: 300,
          distance: '50px'
        })
        sr.reveal('#li-4', {
          duration: 1000,
          origin: 'top',
          delay: 400,
          distance: '50px'
        })
      })

    $(document).ready(function () {
      if ($(window).scrollTop()) {
          $('.navbar-default').addClass('white-nav')
        $('#logo-image').attr('src', require('../assets/logo/e-mtiyaz-logo-v3-group.png'))
      } else {
          $('.navbar-default').removeClass('white-nav')
        $('#logo-image').attr('src', require('../assets/logo/e-mtiyaz-logo-v3-group-white.png'))
      }

        $(window).scroll(async function () {
          if ($(window).scrollTop()) {
            $('.navbar-default').addClass('white-nav')
          $('#logo-image').attr('src', require('../assets/logo/e-mtiyaz-logo-v3-group.png'))
        } else {
            $('.navbar-default').removeClass('white-nav')
          $('#logo-image').attr('src', require('../assets/logo/e-mtiyaz-logo-v3-group-white.png'))
        }
        })

      $('.navbar-toggler').on('click', function () {
          window.sr = ScrollReveal({ reset: false })
        sr.reveal('#logo-image', {
            duration: 1000,
            origin: 'left',
            distance: '300px'
          })
          sr.reveal('#li-1', {
            duration: 1000,
            origin: 'top',
            delay: 100,
            distance: '50px'
          })
          sr.reveal('#li-2', {
            duration: 1000,
            origin: 'top',
            delay: 200,
            distance: '50px'
          })
          sr.reveal('#li-3', {
            duration: 1000,
            origin: 'top',
            delay: 300,
            distance: '50px'
          })
          sr.reveal('#li-4', {
            duration: 1000,
            origin: 'top',
            delay: 400,
            distance: '50px'
          })

          if (!$('.navbar-default').hasClass('white-nav')) {
            if (!this.white) {
              $('#logo-image').attr('src', require('../assets/logo/e-mtiyaz-logo-v3-group.png'))
            this.white = true
            } else {
              $('#logo-image').attr('src', require('../assets/logo/e-mtiyaz-logo-v3-group-white.png'))
            this.white = false
          }
          }

          let isVisible = $('.collapse').is(':visible')
        if (!isVisible && !$(window).scrollTop()) {
            $('.navbar-default').addClass('black-text')
        }
          if (isVisible && !$(window).scrollTop()) {
            $('.navbar-default').removeClass('black-text')
        }
        })

        $("ul.dropdown-menu [data-toggle='dropdown']").on('click', function (event) {
          event.preventDefault()
        event.stopPropagation()

        $(this).siblings().toggleClass('show')

        if (!$(this).next().hasClass('show')) {
            $(this).parents('.dropdown-menu').first().find('.show').removeClass('show')
        }
          $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function (e) {
            $('.dropdown-submenu .show').removeClass('show')
        })
      })
      })
    },
    methods: {
      getLogoImageSrc () {
        return require(this.logoImageSrc)
    }
    }
  }
</script>

<style lang="scss" scoped>
    @import "../variables.scss";

    .navbar-default{
        transition:500ms ease;
        -webkit-text-fill-color: $font-color-light;
        .dropdown-item {
            -webkit-text-fill-color: $font-color-dark;
        }
      .nav-link {
        -webkit-text-fill-color: white;
      }
      .active > a {
        -webkit-text-fill-color: white;
        font-weight: normal;
      }
    }

    .navbar-default.scrolled{
        background:$font-color-light;
    }

    .navbar {
        padding: .3rem;
    }
    .dropdown-item {
        margin-top: .5rem;
        text-transform: uppercase;
    }
    .white-nav {
        background-color: $font-color-light;
        padding: 10px 25px;
        box-shadow: 1px 1px 4px rgba(0, 0, 0, 0.3);
        -webkit-text-fill-color: $font-color-dark;
        .dark-blue-text {
            color: $dark-blue-color;
        }
        .fa-angle-down {
            color: $font-color-dark;
        }
      .active > a {
        -webkit-text-fill-color: $font-color-dark;
        font-weight: normal;
      }
      .nav-link {
        -webkit-text-fill-color: $font-color-dark;
      }
    }

    .black-text {
      .active > a {
        -webkit-text-fill-color: $font-color-dark;
        font-weight: normal;
      }
      svg {
        color: $font-color-dark;
      }
      .nav-link {
        -webkit-text-fill-color: $font-color-dark;
      }
    }

    .fa-angle-down {
        color: $font-color-light;
    }

    .dropdown-item {
        color: $font-color-dark;
    }

    .dropdown-item.active {
        background-color: transparent;
        color: $dark-blue-color;
    }
    .dropdown-item .active > a {
        color: $dark-blue-color;
    }
    .dropdown-item:hover {

    }
    .dropdown-item:active {
        background-color: transparent;
        color: $dark-blue-color;
    }

    .navbar-nav li {
        padding-right: 30px;
    }

    .nav-link {
        font-size: 1.0em;
        font-weight: 400;
    }

    .logo-image {
        max-width: 220px;
        margin-right: 10px;
    }

    .logo-name {
        font-size: 1.3em;
        font-weight: 700;
        color: $medium-blue-color;
    }

    // Dropdown menu style
    .dropdown-toggle::after {
        display: none;
    }
    .dropdown-menu {
        margin-top: 2rem;
        padding: 1rem;
        transition: 0.5s ease;
    }

    // Dropdown icon
    .fa-1x {
        font-size: 2rem;
    }
    .navbar-toggler.toggler-example {
        cursor: pointer;
        border: none;
    }
    .dark-blue-text {
        color: $dark-blue-color;
    }

    // Dropdown submenu style
    .dropdown-submenu {
        position: relative;
    }

    /** media queries **/
    @media screen and (min-width: 992px) { /* large screen */

    }
    @media screen and (max-width: 992px) { /* large screen */
        .navbar-nav {
            padding: 2rem;
            background: white;
        }
        .dark-blue-text {
            color: $font-color-light;
        }
    }
    @media screen and (max-width: 768px) { /* medium screen */

    }
    @media screen and (max-width: 648px) { /* large screen */

    }
    @media (max-width: 576px) { /* mobile screen */
        .dropdown-menu {
            margin-top: 0;
            padding: 0;
        }
        .navbar-nav li {
            padding-right: 0;
            font-size: 1rem;
        }
        .dropdown-menu li {
            font-size: .8rem;
        }
    }
</style>
