<template>
  <div>
    <!--{{post}}{{post?.files[0]?.file_path}}-->
    
    <div :id="post.id" class="max-w-sm w-full lg:max-w-full lg:flex">
      <div
        class="
          h-48
          lg:h-auto lg:w-48
          flex-none
          bg-cover
          rounded-t
          lg:rounded-t-none lg:rounded-l
          text-center
          overflow-hidden
        "
        :style="`background-image: url('storage/post-images/${post?.files[0]?.file_path ??'default.jpg'}');`"
        title=""
      ></div>
      <div
        class="
          border-r border-b border-l border-gray-400
          lg:border-l-0 lg:border-t lg:border-gray-400
          bg-white
          rounded-b
          lg:rounded-b-none lg:rounded-r
          p-4
          flex flex-col
          justify-between
          leading-normal
        "
      >
        <div class="mb-8">
          <p class="text-sm text-gray-600 flex items-center">
            <svg
              class="fill-current text-gray-500 w-3 h-3 mr-2"
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 20 20"
            >
              <path
                d="M4 8V6a6 6 0 1 1 12 0v2h1a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-8c0-1.1.9-2 2-2h1zm5 6.73V17h2v-2.27a2 2 0 1 0-2 0zM7 6v2h6V6a3 3 0 0 0-6 0z"
              />
            </svg>
            Members only
          </p>
          <div class="text-gray-900 font-bold text-xl mb-2">
            {{ post.title }}
          </div>
          <p class="text-gray-700 text-base">
            {{ post.text }}
          </p>
        </div>
        <div class="flex items-center">
          <img v-if="post.author.profile_photo_path"
            class="w-10 h-10 rounded-full mr-4"
            :src="'/storage/'+post.author.profile_photo_path"
            alt=""
          />
            <img v-else
            class="w-10 h-10 rounded-full mr-4"
            :src="post.author.profile_photo_url"
            alt=""
          />
          <div class="text-sm">
            <p class="text-gray-900 leading-none">{{post.author.name}}</p>
            <p class="text-gray-600">{{ post.created_at }}</p>
          </div>

          <!--actions -->
          <div v-if="userIsOwner" class="m-4 flex flex-row">
            <Link :href="route('posts.edit', post)" method="get" as="button" type="button">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              width="24"
              height="24"
              viewBox="0 0 24 24"
              fill="none"
              stroke="#636466"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            >
              <polygon points="16 3 21 8 8 21 3 21 3 16 16 3"></polygon>
            </svg>
            </Link>
            <jet-danger-button class="ml-3" @click="confirmDelete">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="#636466"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
              >
                <polyline points="3 6 5 6 21 6"></polyline>
                <path
                  d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"
                ></path>
                <line x1="10" y1="11" x2="10" y2="17"></line>
                <line x1="14" y1="11" x2="14" y2="17"></line>
              </svg>
            </jet-danger-button>
          </div>
        </div>
      </div>
    </div>
    <!--modal start-->
    <!-- Delete Account Confirmation Modal -->
    <jet-dialog-modal :show="modal" @close="modal = false">
      <template #title> Delete Account </template>

      <template #content>
        Are you sure you want to delete your Post? Once your post is deleted,
        all of its resources and data will be permanently deleted.
      </template>

      <template #footer>
        <jet-secondary-button @click="this.modal = false">
          Cancel
        </jet-secondary-button>

        <jet-danger-button class="ml-3" @click="destroyPost">
          Delete Post
        </jet-danger-button>
      </template>
    </jet-dialog-modal>
    <!--modal end-->
  </div>
</template>

<script>
import { defineComponent } from "vue";
import JetActionSection from "@/Jetstream/ActionSection.vue";
import JetDialogModal from "@/Jetstream/DialogModal.vue";
import JetDangerButton from "@/Jetstream/DangerButton.vue";
import JetInput from "@/Jetstream/Input.vue";
import JetInputError from "@/Jetstream/InputError.vue";
import JetSecondaryButton from "@/Jetstream/SecondaryButton.vue";
import { Inertia } from "@inertiajs/inertia";
import { Link } from '@inertiajs/inertia-vue3';

export default defineComponent({
  props: ["post"],
  components: {
    JetActionSection,
    JetDangerButton,
    JetDialogModal,
    JetInput,
    JetInputError,
    JetSecondaryButton,
    Link
  },
  data() {
    return {
      modal: false,
    };
  },
  computed:{
    userIsOwner(){
        return this.post.user_id == this.$page.props.user.id;
    }
  },
  methods: {
    confirmDelete() {
      this.modal = true;
    },
    destroyPost() {
      Inertia.delete(route("posts.destroy", this.post));
    },
  },
});
</script>