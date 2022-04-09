<template>
  <app-layout title="Dashboard">
    <br>
    {{ form }}
    <br>
    {{post}}
    <template #header>
      <h2 class="font-semibold text-xl text-gray-800 leading-tight">
        Post Create
      </h2>
    </template>

    <div class="p-12">
      <jet-validation-errors class="mb-4" />
      <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
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

        <input id="images" type="file" @input="form.images = $event.target.files[0]" />

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
//
import { reactive } from 'vue'
import { Inertia } from '@inertiajs/inertia'

export default defineComponent({
  props: ["post"],
  setup (props) {
    const form = reactive({
      _method: 'post',
      preserveState: true,
      preserveScroll: true,
      title: props.post?.title ?? "",
      text: props.post?.text ?? "",
      images: [],
      lastPage: '' 
    })

    function submit() {
      if(!this.post){ //si no hay ṕost crear
        Inertia.post(this.route("posts.store"), form)
      }
      else{//sino editar
        this.form._method = 'put'
        Inertia.post(this.route("posts.update", props.post), form)
      }
    }

    return { form, submit }
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
  },
  methods: {
    handleImages(files) {
      console.log(files);
    },
  },
  mounted(){
    //necesario para redirigir al la ultima pagina del paginate en el que estaba el post que se edito
    // sigue en el componente UserPosts en la parte de mounted
    this.form.lastPage=localStorage.getItem("lastPage")
  }
});
</script>
