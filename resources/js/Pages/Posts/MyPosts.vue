<template>
    <app-layout title="Dashboard">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                User posts
            </h2>
        </template>

        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white shadow-xl sm:rounded-lg">
                    <Link :href="route('posts.create')" class="text-sm text-gray-700 underline">
                        Create Post
                    </Link>
                </div>
                <!-- 
                    {{myPosts }}
                -->
                <PostCard class="m-2" v-for="post in myPosts.data" :key="post.id" :post="post" >
                </PostCard>
                <pagination class="mt-6" :links="myPosts.links" />
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
    import Pagination from '@/Components/Pagination'

    export default defineComponent({
        props: ['myPosts'],
        components: {
            AppLayout,
            Link,
            PostCard,
            Pagination
            //Welcome,
        },
        mounted(){
            //necesario para redirigir al la ultima pagina del paginate en el que estaba el post que se edito
            // sigue en el componente PostCreate en la parte de mounted
            localStorage.setItem("lastPage", this.myPosts.current_page);
            /*
            var scrollpos = localStorage.getItem("scrollpos");
            if (scrollpos) window.scrollTo(0, scrollpos);
            window.onscroll = function (e) {
                console.log(e);
                localStorage.setItem("scrollpos", window.scrollY);
            };
            */
        }
    })
</script>
