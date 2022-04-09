<template>
    <app-layout title="Dashboard">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Users
            </h2>
        </template>

        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                    
                        
                        <!--
                            <h3> User Posts:</h3>
                            {{$page.props.user}}
                            <pre></pre>
                            {{users}}
                         -->
                        <Link :href="route('users.create')" class="text-sm text-gray-700 underline">
                            Create User
                        </Link>

                        <table class="table-auto w-full">
                            <thead>
                                <tr>
                                    <th class = "p-2"> 
                                       Id
                                   </th>
                                   <th class = "p-2"> 
                                       Nombre
                                   </th>
                                    <th class = "p-2"> 
                                       Email
                                   </th>
                                    <th class = "p-2"> 
                                       Acciones
                                   </th>      
                                </tr>    
                            </thead> 
                            <tbody>
                                <tr v-for="user in users.data" :key="user.id"> 
                                    <td class="p-3 border">{{user.id}}</td>
                                    <td class="p-3 border">{{user.name}}</td>
                                    <td class="p-3 border">{{user.email}}</td>
                                    <td class="p-3 border">acciones</td>
                                </tr>    
                            </tbody>       
                        </table>    
                    
                </div>
            </div>
        </div>
    </app-layout>
</template>

<script>
    import { defineComponent } from 'vue'
    import AppLayout from '@/Layouts/AppLayout.vue'
    //import Welcome from '@/Jetstream/Welcome.vue'
    import { Link } from '@inertiajs/inertia-vue3';

    export default defineComponent({
        props: ['users'],
        components: {
            AppLayout,
            Link
        },
    })
</script>
