<template>
  <div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Ajouter un article</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-12 text-center">
              <div class="form-group col-md-6 text-left">
                <input v-model="nom" type="text" class="form-control" id="nom" placeholder="Nom">
                <label v-if="!nom && firstSubmit" for="nom" class="text-danger" style="padding: 0; margin: 0;padding-left: 13px">Champ requis</label>
              </div>

              <div class="article-img">
                <img class="m-5 w-50" src="https://stumpblog.com/wp-content/uploads/2018/09/student-education.jpg" alt="Image cap" style="box-shadow: 0 0 7px rgba(0, 0, 0 ,0.5)"/>
              </div>
            </div>
            <div class="col-12 mt-5">
              <p class="lead article-body p-5">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At augue eget arcu dictum varius duis at. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin. Tellus cras adipiscing enim eu. Maecenas volutpat blandit aliquam etiam erat velit scelerisque in dictum. Sed viverra ipsum nunc aliquet bibendum enim. Auctor eu augue ut lectus arcu. Aliquet eget sit amet tellus cras adipiscing enim eu. Suscipit adipiscing bibendum est ultricies integer quis auctor. Mi sit amet mauris commodo quis imperdiet massa. Nibh sed pulvinar proin gravida hendrerit. Scelerisque purus semper eget duis at tellus at. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Cursus sit amet dictum sit. Integer enim neque volutpat ac tincidunt vitae semper quis. Vehicula ipsum a arcu cursus vitae congue. Enim facilisis gravida neque convallis a. Nunc scelerisque viverra mauris in aliquam sem fringilla. Diam ut venenatis tellus in metus vulputate eu scelerisque. Venenatis a condimentum vitae sapien pellentesque.
              </p>
            </div>
            <div class="col-12 text-left">
              <p class="pl-5 lead" style="opacity: 0.5;">Dernière modification : 21-12-2019</p>
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
    name: 'AddPost',
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

</style>
