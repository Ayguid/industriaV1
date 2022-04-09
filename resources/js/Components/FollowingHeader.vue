<template>
  <!--
    {{ $page.component === "Followings" }}
  -->
  
  <div class="flex justify-around mt-4">
    <div class="">
      <jet-nav-link
        :href="route('userFollowers', profile.user)"
        :active="route().current('userFollowers')"
      >
        Followers
      </jet-nav-link>
    </div>

    <div class="">
      <jet-nav-link
        :href="route('userFollowings', profile.user)"
        :active="route().current('userFollowings')"
      >
        Following
      </jet-nav-link>
    </div>
  </div>
</template>
<script>
//import { Link } from "@inertiajs/inertia-vue3";
import JetNavLink from "@/Jetstream/NavLink.vue";
export default {
  props: {
    profile: Object,
  },
  components: {
    JetNavLink,
  },
  //FollowingHeader
};
</script> 