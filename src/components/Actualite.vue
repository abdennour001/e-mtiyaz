<template>
  <div class="container-fluid">
    <div class="row">
      <div class="col-12 mb-3">
        <h4 class="my-md-5" style="font-weight: normal">
          Suivez l'actualité de l'éducation, des études supérieures et de l'insertion professionnelle des jeunes diplômés en Algérie.
        </h4>
      </div>

      <div class="col-12">
        <ul id="articles" class="row article-container m-0 p-0">
          <li v-for="article in myArticles" class="col-lg-4 col-md-4 col-sm-12 mb-5" :key="article.id">
            <PostCard/>
          </li>
        </ul>
      </div>

      <div class="col-12">
        <b-pagination
          v-model="currentPage"
          :total-rows="rows"
          :per-page="perPage"
          align="center"
          pills
        />
      </div>

    </div>
  </div>
</template>

<script>
  import PostCard from './PostCard'

  export default {
    name: 'Actualite',
    components: { PostCard },
    data() {
      return {
        perPage: 6,
        currentPage: 1,
        articles: [
          {id: 1, title: "", body: "", img: "", date: ""},
          {id: 2, title: "", body: "", img: "", date: ""},
          {id: 3, title: "", body: "", img: "", date: ""},
          {id: 4, title: "", body: "", img: "", date: ""},
          {id: 5, title: "", body: "", img: "", date: ""},
          {id: 6, title: "", body: "", img: "", date: ""},
          {id: 7, title: "", body: "", img: "", date: ""},
          {id: 8, title: "", body: "", img: "", date: ""}
        ]
      }
    },
    computed: {
      rows() {
        return this.articles.length
      },
      myArticles() {
        return this.articles.slice( (this.currentPage - 1) * this.perPage,
          this.currentPage * this.perPage)
      }
    }
  }
</script>

<style lang="scss" scoped>

  @import '../variables.scss';

  .page-item.active .page-link {
    background-color: red !important;
    border-color: red !important;
  }

  .article-container {
    list-style-type: none;
  }

</style>
