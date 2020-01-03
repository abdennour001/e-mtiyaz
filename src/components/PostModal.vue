<template>
  <div id="myModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Article</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-12 text-center">
              <h1 class="display-5-override text-center mt-3">{{this.title}}</h1>

              <div class="article-img">
                <img class="m-5 w-50" :src="img_path" alt="Image cap" style="box-shadow: 0 0 7px rgba(0, 0, 0 ,0.5)"/>
              </div>
            </div>
            <div class="col-12 mt-5 text-left">
              <p class="lead article-body p-md-5 p-lg-5">
                {{this.body}}
              </p>
            </div>
            <div class="col-12 text-left">
              <p class="pl-mf-5 pl-lg-5 lead" style="opacity: 0.5;">Dernière modification : {{this.date}}</p>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

  export default {
    name: 'PostModal',
    props: ["title", "date", "body", 'img_path'],
  }
</script>

<style lang="scss" scoped>

  @import '../variables';

  .article-body {
    text-indent: 50px;
  }

  .article-img {
    position: relative;
    z-index: 999;
  }

  .article-img::after {
    content: ' ';
    z-index: -1;
    display: block;
    height: 100%;
    width: 50%;
    position:absolute;
    left:10%;
    top:10%;
    background: $light-blue-color-transparent;
  }

  .display-5-override {
    font-weight: 400;
    color: $dark-blue-color;
  }

  /** media queries **/
  @media screen and (min-width: 992px) { /* large screen */

  }
  @media screen and (max-width: 992px) { /* large screen */
    .display-5-override {
      font-size: 2rem;
    }
    .lead {
      font-size: 1.3rem;
    }
  }
  @media screen and (max-width: 768px) { /* medium screen */
    .display-5-override {
      font-size: 1.8rem;
    }
    .lead {
      font-size: 1.2rem;
    }
  }
  @media (max-width: 576px) { /* mobile screen */
    .display-5-override {
      font-size: 1.5rem;
    }
    .article-body {
      text-indent: 20px;
    }
    .lead {
      font-size: 1.1rem;
    }
  }

</style>
