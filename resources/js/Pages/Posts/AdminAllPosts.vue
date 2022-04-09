<template>
    <app-layout title="Dashboard">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Posts
            </h2>
        </template>

        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">

                </div>

                 <!--{{posts}}-->
                 
                <PostCard class="m-2" v-for="post in posts.data" :key="post.id" :post="post">
                </PostCard>
                
                
            </div>
        </div>
    </app-layout>
</template>

<script>
    import { defineComponent } from 'vue'
    import AppLayout from '@/Layouts/AppLayout.vue'
    //import Welcome from '@/Jetstream/Welcome.vue'
    import { Link } from '@inertiajs/inertia-vue3';
    import PostCard from '@/Pages/Posts/Partials/PostCard.vue'

    
    export default defineComponent({
        props: ['posts'],
        components: {
            AppLayout,
            Link,
            PostCard
        },
    })
</script>
