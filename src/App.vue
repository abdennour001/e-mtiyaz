<template>
  <div id="app">
    <Home/>
  </div>
</template>

<script>

  import Home from './components/Home'

  export default {
    name: 'app',
    components: { Home },
    mounted () {

    }
  }

</script>

<style lang="scss">

  @import './variables.scss';

  #app {
    font-family: $font-family-sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: $font-color-dark;
  }

  /*body, html { overflow-x: hidden; }*/

  hr.light {
    background-color: $font-color-light;
    opacity: 0.3;
  }
  hr.dark {
    background-color: $font-color-dark;
    height: 0.5px;
    opacity: 0.2;
    width: 50%;
  }
  hr.blue {
    background-color: $medium-blue-color;
    height: 1px;
    opacity: 1;
    width: 30%;
  }
  .display-5 {
    font-weight: 400;
    color: $dark-blue-color;
  }
  .welcome {
    margin: 0 auto;
    padding: 1.5rem;
  }
  .img-border {
    border: 20px solid whitesmoke;
    -webkit-box-shadow: 0 8px 6px -6px rgba(0, 0, 0, 0.2);
    -moz-box-shadow: 0 8px 6px -6px rgba(0, 0, 0, 0.2);
    box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.2);
  }
  .squeeze-70 {
    width: 70%;
  }

  .vertical-align {
    display: flex;
    align-items: center;
  }


  /** media queries **/
  @media screen and (min-width: 992px) { /* large screen */

  }
  @media screen and (max-width: 992px) { /* large screen */
    .welcome {
      padding: .9rem;
    }
    .squeeze-70 {
      width: 80%;
    }
    .display-5 {
      font-size: 2rem;
    }
  }
  @media screen and (max-width: 768px) { /* medium screen */
    .welcome {
      padding: .5rem;
    }
    .squeeze-70 {
      width: 85%;
    }
    .display-5 {
      font-size: 1.8rem;
    }
  }
  @media (max-width: 576px) { /* mobile screen */
    .welcome {
      padding: .3rem;
    }
    .squeeze-70 {
      width: 100%;
    }
    .display-5 {
      font-size: 1.5rem;
    }
  }
</style>
