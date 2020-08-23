<template>
  <div class="container text-left">
    <div class="card" data-toggle="modal" data-target=".bd-example-modal-xl">
      <img :src="img_path" alt="Image cap" class="card-img-top">
      <div class="card-body">
        <h5 class="card-title">{{this.title}}</h5>
        <h6 class="card-subtitle my-2 text-muted">{{this.date}}</h6>
        <p class="card-text">
          {{this.intro}}
        </p>
        <a href="#" class="btn btn-secondary card-link" data-toggle="modal" data-target=".bd-example-modal-xl">Lire la suite</a>
      </div>
    </div>
  </div>
</template>

<script>
  import PostModal from './PostModal'
  export default {
    name: 'PostCard',
    components: { PostModal },
    props: ["title", "date", "body", 'img_path'],
    computed: {
      intro() { // get the first 100 characters of the body
        return this.body.slice(0, 200);
      }
    }
  }
</script>

<style lang="scss" scoped>

  @import '../variables';

  .card {
    cursor: pointer;
    transition: 0.5s ease;
    height: 100%;
  }

  .card:hover {
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
  }

  .card-text {
    /*background: -webkit-linear-gradient($font-color-dark 10%, rgba(0, 0, 0, 0) 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;*/
  }

  .card-title {
    display: -webkit-box;
    -webkit-line-clamp: 3; /* number of lines to show */
    -webkit-box-orient: vertical;
    overflow: hidden;
  }

  .card-text {
    display: -webkit-box;
    -webkit-line-clamp: 4; /* number of lines to show */
    -webkit-box-orient: vertical;
    overflow: hidden;
  }
</style>
