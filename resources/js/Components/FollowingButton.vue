<template>
  <div>
    <Link
      v-if="!user.following"
      as="button"
      method="POST"
      preserve-scroll
      :href="`/${$page.props.user.username}/followings/${user.id}`"
      class="
      p-4
        font-bold
        text-center text-gray-700
        rounded-full
        hover:bg-blue-100 hover:text-blue-500
      "
    >
      Follow
    </Link>

    <Link
      v-if="user.following"
      as="button"
      method="DELETE"
      preserve-scroll
      :href="`/${$page.props.user.username}/followings/${user.id}`"
      class="
      p-4
        font-bold
        text-center text-gray-700
        rounded-full
        hover:bg-blue-100 hover:text-blue-500
      "
    >
      UnFollow
    </Link>
  </div>
</template>

<script>
import { Link } from "@inertiajs/inertia-vue3";
export default {
  props: {
    user: Object,
  },
  components: {
    Link,
  },
  //FollowingHeader
};
</script> 