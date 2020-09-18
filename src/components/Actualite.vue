<template>
  <div class="container-fluid">
    <div class="row">
      <div class="col-12 mb-3">
        <h4 class="my-md-5" style="font-weight: normal">
          Suivez l'actualité de l'éducation, des études supérieures et de l'insertion professionnelle des jeunes diplômés en Algérie.
        </h4>
      </div>

      <div class="col-12" ref="container">
        <ul id="articles" class="row article-container justify-content-center m-0 p-0">
          <li v-for="article in myArticles" class="col-lg-4 col-md-12 card-deck col-sm-12 mb-5" :key="article.id_article">
            <PostCard :title="article.title" :date="article.date" :body="article.body" :img_path="article.img_path"
                      @click.native="sendData(article.id_article, article.title, article.body, article.date, article.img_path)"
            />
          </li>
          <li v-if="articles.length === 0">
            <p class="lead">
              Il n'y a aucun article dans l'actualité.
            </p>
          </li>
        </ul>
      </div>

      <div class="col-12">
        <b-pagination
          v-model="currentPage"
          :total-rows="rows"
          :per-page="perPage"
          align="center"
          size="md"
          pills
        />
      </div>
    </div>

    <!--    Post Modal -->
    <PostModal :title="liveArticle.title" :date="liveArticle.date" :body="liveArticle.body" :img_path="liveArticle.img"/>
  </div>
</template>

<script>

  import Vue from 'vue';
  // Import component
  import Loading from 'vue-loading-overlay';
  // Import stylesheet
  import 'vue-loading-overlay/dist/vue-loading.css';
  // Init plugin
  Vue.use(Loading);

  import PostCard from './PostCard'
  import PostModal from './PostModal'

  export default {
    name: 'Actualite',
    components: { PostModal, PostCard },
    data() {
      return {
        perPage: 3,
        currentPage: 1,
        articles: [],
        liveArticle: {},
        axiosResponse: false,
      }
    },
    mounted () {

      // show a spinner while fetching data from the server
      let loader = this.$loading.show({
        // Optional parameters
        container: this.$refs.container,
        color: 'dodgerblue',
        zIndex: 999,
        loader: 'spinner',
      });

      // make the api call to get all the articles
      this.axios.get( "/articles")
      .then(response => {
        this.articles = response.data;
        this.articles.forEach(
          article => article.img_path = article.img_path.replace("://group.", "://admin.")
        )
        this.axiosResponse = true;
      })
      .catch(e => {
        console.error(e);
      });

      // hide the spinner.
      setTimeout(() => {
        loader.hide()
      },1000);

    },
    computed: {
      rows() {
        return this.articles.length
      },
      myArticles() {
        return this.articles.slice( (this.currentPage - 1) * this.perPage,
          this.currentPage * this.perPage)
      }
    },
    methods: {
      sendData(id, title, body, date, img) {
        this.liveArticle = {
          id: id,
          title: title,
          body: body,
          date: date,
          img: img,
        }
      }
    },
    watch: {
      axiosResponse() {
        // data is ready to go

      }
    }
  }
</script>

<style lang="scss" scoped>

  @import '../variables.scss';

  .article-container {
    list-style-type: none;
  }

</style>
