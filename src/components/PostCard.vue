<template>
  <div class="container text-left">
    <div class="card" data-toggle="modal" data-target=".bd-example-modal-xl">
      <img src="https://stumpblog.com/wp-content/uploads/2018/09/student-education.jpg" alt="Image cap" class="card-img-top">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <h6 class="card-subtitle mb-2 text-muted">21-12-2019</h6>
        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        <a href="#" class="card-link" data-toggle="modal" data-target=".bd-example-modal-xl">Lire la suite</a>
      </div>
    </div>

<!--    Post Modal -->
    <PostModal/>
  </div>
</template>

<script>
  import PostModal from './PostModal'
  export default {
    name: 'PostCard',
    components: { PostModal }
  }
</script>

<style lang="scss" scoped>

  @import '../variables';

  .card {
    cursor: pointer;
    transition: 0.5s ease;
  }

  .card:hover {
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
  }

  a {
    color: $dark-blue-color;
    text-decoration: none;
  }

</style>
