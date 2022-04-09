<template>
  <app-layout title="Dashboard">
    <template #header>
      <h2 class="font-semibold text-xl text-gray-800 leading-tight">
        User Create
      </h2>
    </template>

    <div class="p-2">
      <jet-validation-errors class="mb-4" />

      <form @submit.prevent="submit">
        <div>
          <jet-label for="name" value="Name" />
          <jet-input
            id="name"
            type="text"
            class="mt-1 block w-full"
            v-model="form.name"
            required
            autofocus
            autocomplete="name"
          />
        </div>

        <div class="mt-4">
          <jet-label for="email" value="Email" />
          <jet-input
            id="email"
            type="email"
            class="mt-1 block w-full"
            v-model="form.email"
            required
          />
        </div>

        <div class="mt-4">
          <jet-label for="password" value="Password" />
          <jet-input
            id="password"
            type="password"
            class="mt-1 block w-full"
            v-model="form.password"
            required
            autocomplete="new-password"
          />
        </div>

        <div class="mt-4">
          <jet-label for="password_confirmation" value="Confirm Password" />
          <jet-input
            id="password_confirmation"
            type="password"
            class="mt-1 block w-full"
            v-model="form.password_confirmation"
            required
            autocomplete="new-password"
          />
        </div>

        <div class="flex items-center justify-end mt-4">
          <jet-button
            class="ml-4"
            :class="{ 'opacity-25': form.processing }"
            :disabled="form.processing"
          >
            Register
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
  props: ["users"],
  data() {
    return {
      form: this.$inertia.form({
        name: "",
        email: "",
        password: "123123123",
        password_confirmation: "123123123",
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
  },
  methods: {
    submit() {
      this.form.post(this.route("users.store"), {
        onSuccess: () => this.form.reset('name', 'email'),
      });
    },
  },
});
</script>
