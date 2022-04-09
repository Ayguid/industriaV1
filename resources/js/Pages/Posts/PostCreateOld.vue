<template>
  <app-layout title="Dashboard">
    {{ form }}
    <template #header>
      <h2 class="font-semibold text-xl text-gray-800 leading-tight">
        Post Create
      </h2>
    </template>

    <div class="p-2">
      <jet-validation-errors class="mb-4" />

      <form @submit.prevent="submit">
        <div>
          <jet-label for="title" value="Title" />
          <jet-input
            id="title"
            type="text"
            class="mt-1 block w-full"
            v-model="form.title"
            required
            autofocus
            autocomplete="title"
          />
        </div>
        <div>
          <jet-label for="text" value="Text" />
          <jet-input
            id="text"
            type="text"
            class="mt-1 block w-full"
            v-model="form.text"
            required
            autofocus
            autocomplete="text"
          />
        </div>


        <div class="flex items-center justify-end mt-4">
          <jet-button
            class="ml-4"
            :class="{ 'opacity-25': form.processing }"
            :disabled="form.processing"
          >
            {{ post ? "update" : "add" }}
          </jet-button>
        </div>
      </form>
    </div>
  </app-layout>
</template>

<script>
import { defineComponent } from "vue";
import AppLayout from "@/Layouts/AppLayout.vue";
//import Welcome from '@/Jetstream/Welcome.vue'
//import JetAuthenticationCard from "@/Jetstream/AuthenticationCard.vue";
//import JetAuthenticationCardLogo from '@/Jetstream/AuthenticationCardLogo.vue'
import JetButton from "@/Jetstream/Button.vue";
import JetInput from "@/Jetstream/Input.vue";
//import JetCheckbox from '@/Jetstream/Checkbox.vue'
import JetLabel from "@/Jetstream/Label.vue";
import JetValidationErrors from "@/Jetstream/ValidationErrors.vue";
import { Head, Link } from "@inertiajs/inertia-vue3";


export default defineComponent({
  props: ["post"],
  data() {
    return {
      form: this.$inertia.form({
        title: this.post?.title ?? "",
        text: this.post?.text ?? "",
        //terms: false,
      }),
    };
  },
  components: {
    AppLayout,
    Head,
    //JetAuthenticationCard,
    //JetAuthenticationCardLogo,
    JetButton,
    JetInput,
    //JetCheckbox,
    JetLabel,
    JetValidationErrors,
    Link,
    UploadImages,
  },
  methods: {
    submit() {
      if (!this.post) {
        this.form.post(this.route("posts.store"), {
          onSuccess: () => this.form.reset("text"),
        });
      } else {
        this.form.put(this.route("posts.update", this.post), {
          //preserveScroll: true,
          onSuccess: () => {
            this.form.reset("title", "text");
          },
        });
      }
    },
    handleImages(files) {
      console.log(files);
    },
  },
});
</script>
