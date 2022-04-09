<template>
  <!--
    <app-layout title="Dashboard">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Notifications
            </h2>
        </template>
    -->
  <div class="py-12 px4">
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
      <div class="bg-white shadow sm:rounded-lg">
        <infinite-scroll :loadMore="loadMoreNotifications">
        <div
          v-for="notification in userNotifications.data"
          :key="notification.id"
          class="p-4 border-b"
        >
          <img
            :src="notification.data.user.profile_photo_url"
            alt=""
            class="flex-shrink-0 w-12 h-12 rounded-full"
          />
          <div class="mb-2">
            <Link
              :href="`/${notification.data.user.username}`"
              class="font-bold"
              >{{ notification.data.user.name }} Liked your post</Link
            >
          </div>
        </div>
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
//import { debounce } from 'lodash';
import { Link } from "@inertiajs/inertia-vue3";
//import AppLayoutVue from '../Layouts/AppLayout.vue';
//import Welcome from '@/Jetstream/Welcome.vue'

export default defineComponent({
  //props: ['posts'],
  props: {
    user: Object,
    notifications: Object,
  },
  layout: AppLayout,
  components: {
    //AppLayout,
    Link,
    //Welcome,
  },
  data() {
    return {
      userNotifications: this.notifications,
    };
  },
  /*
        watch:{
            notifications(newNotifications){
                this.notifications = newNotifications
            }
        },
        */
  methods: {
    loadMoreNotifications() {
      if (!this.userNotifications.next_page_url) {
        return Promise.resolve();
      }
      return axios
        .get(this.userNotifications.next_page_url)
        .then((response) => {
          console.log(response);
          this.userNotifications = {
            ...response.data,
            data: [...this.userNotifications.data, ...response.data.data],
          };
        });
    },
  },
});
</script>
