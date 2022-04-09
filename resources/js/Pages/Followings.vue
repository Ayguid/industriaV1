<template>
  <div>

    <following-header :profile="profile" />

    <div class="py-12 px4">
      <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white shadow sm:rounded-lg">
          <infinite-scroll :loadMore="loadMoreFollowings">
            <div
              v-for="user in userFollowings.data"
              :key="user.id"
              class="flex justify-evenly items-center p-4 border-b"
            >
              <img
                :src="user.profile_photo_url"
                :alt="user.name"
                class="flex-shrink-0 w-12 h-12 rounded-full"
              />
              <div class="ml-4">
                <div>
                  <a
                    :href="route('userPosts', user.username)"
                    class="font-bold"
                    >{{ user.name }}</a
                  >
                  -
                  <a
                    :href="route('userPosts', user.username)"
                    class="text-gray-500 text-sm"
                    >{{ `@${user.username}` }}</a
                  >
                </div>
              </div>
              <following-button :user="user" />
            </div>
          </infinite-scroll>
        </div>
      </div>
    </div>

    <!--
    <app-layout title="User Posts">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{`${user.name}'s Posts`}}
            </h2>
        </template>
-->
  </div>
  <!--
    </app-layout>
    -->
</template>

<script>
import { defineComponent } from "vue";
import AppLayout from "@/Layouts/AppLayout.vue";
//import axios from 'axios';
//import { debounce } from 'lodash';
//import { Link } from "@inertiajs/inertia-vue3";
import FollowingHeader from "@/Components/FollowingHeader.vue";
import FollowingButton from "@/Components/FollowingButton.vue";
//import Welcome from '@/Jetstream/Welcome.vue'

export default defineComponent({
  //props: ['posts'],
  layout: AppLayout,
  props: {
    profile: Object,
    followings: Object,
  },
  components: {
    //AppLayout,
    //Link,
    FollowingHeader,
    FollowingButton,
    //Welcome,
  },
  data() {
    return {
      userFollowings: this.followings,
    };
  },
  watch: {
    followings(newFollowings) {
      this.userFollowings = newFollowings;
    },
  },
  methods: {
    loadMoreFollowings() {
      if (!this.userFollowers.next_page_url) {
        return Promise.resolve();
      }
      return axios.get(this.userFollowings.next_page_url).then((response) => {
        console.log(response);
        this.userFollowings = {
          ...response.data,
          data: [...this.userFollowings.data, ...response.data.data],
        };
      });
    },
  },
  mounted() {},
});
</script>
