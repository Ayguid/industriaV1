<template>
    <!--
    <app-layout title="Dashboard">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Dashboard
            </h2>
        </template>
        -->
        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                    <pre>
                        
                        <!--
                            <h3> User Posts:</h3>
                            {{$page.props.user}}
                            {{posts}}
                         -->

                    </pre>
                </div>
            </div>
        </div>
        <!--
    </app-layout>
    -->
</template>

<script>
    import { defineComponent } from 'vue'
    import AppLayout from '@/Layouts/AppLayout.vue'
    
    //import Welcome from '@/Jetstream/Welcome.vue'

    export default defineComponent({
        //props: ['posts'],
        layout: AppLayout,
        components: {
            //AppLayout,
            //Welcome,
        },
        created(){
            // ver como recuperar el slot de title por el persisten layout
            //console.log(AppLayout.props.title('12'));
        }
    })
</script>
