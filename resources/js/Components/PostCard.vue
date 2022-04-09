<template>
  <div class="flex p-4 border-b">
    <img
      :src="post.user.profile_photo_url"
      :alt="post.user.name"
      class="flex-shrink-0 w-12 h-12 rounded-full"
    />
    <div class="ml-4">
      <div>
        <a :href="`${post.user.username}`" class="font-bold">{{
          post.user.name
        }}</a>
        -
        <a :href="`${post.user.username}`" class="text-gray-500 text-sm">{{
          `@${post.user.username}`
        }}</a>
      </div>
      <!-- -->
      <!--
      <p id="content" class="content" style="white-space: pre-line">
        {{ postContent }}
      </p>
      -->
      <p
        id="content"
        class="content"
        style="white-space: pre-line"
        v-html="convertToTag(post.content)"
      ></p>
      <!--
                <div class="mb-4">{{ post.content }}</div>
                <p id="content" class="content"
                  v-html="convertToTag(post.content)">
                </p>
              -->
      <div v-if="post.media.length" class="grid gap-2 my-2">
        <div v-for="(m, index) in post.media" :key="index">
          <img
            :src="m.full_url"
            alt=""
            class="object-cover w-full rounded-xl"
          />
        </div>
      </div>

      <div class="flex items-center">
        <!--los botones de inertia puede hacer reqs como un form  wow"-->
        <!--
                <Link
                class="inline-flex items-center rounded-full p-2 hover:blue-100 text-blue-500 focus:ring-transparent" 
                preserve-scroll
                preserve-state
                method="POST"
                as="button" 
                :href="`/posts/${postData.id}/like`">
                    <PostLikeIcon class="w-4 h-4" :name="postData.liked?'heart':'heart-outline'"></PostLikeIcon>
                </Link>
                -->

        <button
          @click="toggleLike()"
          class="
            inline-flex
            items-center
            rounded-full
            p-2
            hover:blue-100
            text-blue-500
            focus:ring-transparent
          "
        >
          <PostLikeIcon
            class="w-4 h-4"
            :name="post.liked ? 'heart' : 'heart-outline'"
          ></PostLikeIcon>
        </button>

        <div>{{ post.likes_count }}</div>

        <button class="ml-4" v-if="isUserPost">
          <EditIcon />
        </button>
        <button @click="deletePost()" class="ml-4" v-if="isUserPost">
          <DeleteIcon />
        </button>
      </div>
    </div>
  </div>
</template>
<script>
import { Link } from "@inertiajs/inertia-vue3";
import EditIcon from "@/Components/EditIcon";
import DeleteIcon from "@/Components/DeleteIcon";

export default {
  props: {
    postData: Object,
  },
  data(){
    return {
      post: this.postData
    }
  },
  watch: {
    post(newData) {
      this.post = newData;
    },
  },
  components: {
    Link,
    EditIcon,
    DeleteIcon,
  },
  computed: {
    /*
    postContent() {
      return this.postData.content;
    },
    */
    isUserPost() {
      return this.$page.props.user.id == this.postData.user_id;
    },
  },
  methods: {
    toggleLike() {
      //solucion chancha para evitar el scroll nefasto de inertia que se da con e boton de link y preserve scroll, hay un tema con el pagination ,
      axios.post(`/posts/${this.post.id}/like`).then((response) => {
        console.log(response);
        this.post.likes_count = response.data;
        this.post.liked = !this.post.liked;
      });
    },
    deletePost(){
      this.$inertia.delete(this.route("posts.destroy", this.post), {}, {
        preserveState: true
      });
    },
    
    convertToTag(content) {
      var regExp =
        /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/;
      var match = content.match(regExp);
      if (match && match[7].length == 11) {
        var src = "https://www.youtube.com/embed/" + match[7];
        return (
          '<div class="iframe_container"><iframe src=' +
          src +
          ' frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></div>'
        );
      } else {
        var exp =
          /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/gi;
        var text1 = content.replace(
          exp,
          '<a class="text-gray-500 text-sm" target="_blank" href="$1">$1</a>'
        );
        var exp2 = /(^|[^\/])(www\.[\S]+(\b|$))/gim;
        return text1.replace(
          exp2,
          '$1<a class="text-gray-500 text-sm" target="_blank" href="http://$2">$2</a>'
        );
      }
    },
  },
};
</script>
<style scoped>
*:focus {
  outline: 0 !important;
}
</style>