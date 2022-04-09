<template>
  <!--
    <app-layout title="Dashboard">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Dashboard
            </h2>
        </template>
        -->

  <div class="py-12 px4">
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
      <div class="bg-white shadow sm:rounded-lg">
        <post-form/>
        <infinite-scroll :loadMore="loadMorePosts" >
          <post-card
            v-for="post in myPostsAndFollowingPosts.data"
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
//import Welcome from '@/Jetstream/Welcome.vue'
import PostForm from "@/Components/PostForm"
import PostCard from "@/Components/PostCard"

export default defineComponent({
  props: ["posts"],
  layout: AppLayout,
  remember: {
    data: ["myPostsAndFollowingPosts"],
    key: "User/myPostsAndFollowingPosts",
  },
  data() {
    return {
      myPostsAndFollowingPosts: this.posts,
    };
  },
  watch: {
    posts(newPosts) {
      this.myPostsAndFollowingPosts = newPosts;
    },
  },
  components: {
    PostForm,
    PostCard
    //AppLayout,
    //Welcome,
  },
  methods: {

    loadMorePosts() {
      if (!this.myPostsAndFollowingPosts.next_page_url) {
        return Promise.resolve();
      }
      return axios
        .get(this.myPostsAndFollowingPosts.next_page_url)
        .then((response) => {
          console.log(response);
          this.myPostsAndFollowingPosts = {
            ...response.data,
            data: [
              ...this.myPostsAndFollowingPosts.data,
              ...response.data.data,
            ],
          };
        });
    },
  },
});
</script>
