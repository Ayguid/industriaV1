<template>
  <!--
    <app-layout title="User Posts">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{`${user.name}'s Posts`}}
            </h2>
        </template>
-->
<!--
  <FollowingButton :user="user"/>
-->

  <div class="py-12 px4">
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
      <div class="bg-white shadow sm:rounded-lg">
        <infinite-scroll :loadMore="loadMorePosts">
          <post-card
            v-for="post in userPosts.data"
            :key="post.id"
            :postData="post"
            class=""
          ></post-card>
        </infinite-scroll>
      </div>
    </div>
  </div>
  <!--
    </app-layout>
    -->
</template>

<script>
import { defineComponent } from "vue";
import AppLayout from "@/Layouts/AppLayout.vue";
import axios from "axios";
//import { debounce } from "lodash";
import { Link } from "@inertiajs/inertia-vue3";
import PostCard from "@/Components/PostCard"
//import FollowingButton from "@/Components/FollowingButton.vue";
//import Welcome from '@/Jetstream/Welcome.vue'

export default defineComponent({
  //props: ['posts'],
  layout: AppLayout,
  props: {
    user: Object,
    posts: Object,
  },
  components: {
    //AppLayout,
    Link,
    PostCard,
    //FollowingButton
    //Welcome,
  },
  remember: {
    data: ["userPosts"],
    key: "User/Posts",
  },
  data() {
    return {
      userPosts: this.posts,
    };
  },
  watch: {
    posts(newPosts) {
      this.userPosts = newPosts;
    },
  },
  methods: {
    toggleLike(post) {
      //solucion chancha para evitar el scroll nefasto de inertia que se da con e boton de link,
      axios.post(`/posts/${post.id}/like`).then((response) => {
        console.log(response);
        post.liked = !post.liked;
        //polemico, validar mejor que hay que aumentar el notification
        /*
                    if(response?.data?.attached.length>0){
                        this.$page.props.unreadNotificationsCount ++
                    }
                    */
      });
    },
    loadMorePosts() {
      if (!this.userPosts.next_page_url) {
        return Promise.resolve();
      }
      return axios
        .get(this.userPosts.next_page_url)
        .then((response) => {
          console.log(response);
          this.userPosts = {
            ...response.data,
            data: [
              ...this.userPosts.data,
              ...response.data.data,
            ],
          };
        });
    },
  },


});
</script>
