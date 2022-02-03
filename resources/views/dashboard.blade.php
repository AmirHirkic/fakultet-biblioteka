<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Početna') }}
        </h2>
    </x-slot>

    <div class="py-12"   style="background-color:rgb(216, 230, 221)">
        <!-- MDI Icons -->
        <!-- Latest compiled and minified CSS -->


<link rel="stylesheet" href="https://cdn.materialdesignicons.com/6.5.95/css/materialdesignicons.min.css">

<!-- Page Container -->
<div class="flex items-center justify-center min-h-screen bg-white py-48">
    <div class="flex flex-col">
        

        <!-- Continue With -->
        <div class="flex flex-col mt-48">
            <div align="center" class="text-gray-400 font-bold uppercase">
                MENU
            </div>

            <div class="flex flex-col items-stretch mt-5">
                <!-- Nav Item #1 -->
                <div class="flex flex-row group px-4 py-8
                    border-t hover:cursor-pointer
                    transition-all duration-200 delay-100">

                    <!-- Nav Icon -->
                    <a href="\">
                    <div class="rounded-xl bg-blue-100 px-3 py-2 md:py-4">
                        <i class="mdi mdi-home mx-auto 
                            text-indigo-900 text-2xl md:text-3xl"></i>
                    </div>
                </a>
                    <!-- Text -->
                    <a href="\">
                    <div class="grow flex flex-col pl-5 pt-2">
                        <div class="font-bold text-sm md:text-lg lg:text-xl group-hover:underline">
                            Home Page
                        </div>

                    </a>

                        <div class="font-semibold text-sm md:text-md lg:text-lg
                            text-gray-400 group-hover:text-gray-500
                            transition-all duration-200 delay-100">
                            Mendažment sistem za biblioteku
                        </div>
                    </div>

                    <a href="\">
                    <!-- Chevron -->
                    <i class="mdi mdi-chevron-right text-gray-400 mdi-24px my-auto pr-2
                        group-hover:text-gray-700 transition-all duration-200 delay-100"></i>
                </div>

            </a>

                <!-- Nav Item #2 -->
                <div class="flex flex-row group px-4 py-8
                    border-t hover:cursor-pointer
                    transition-all duration-200 delay-100">

                    <a href="\books">
                    <!-- Nav Icon -->
                    <div class="rounded-xl bg-blue-100 px-3 py-2 md:py-4">
                        <i class="mdi mdi-book-open-page-variant mx-auto 
                            text-indigo-800 text-2xl md:text-3xl"></i>
                    </div>
                
                  <a href="\books">
                    <!-- Text -->
                    <div class="grow flex flex-col pl-5 pt-2">
                        <div class="font-bold text-sm md:text-lg lg:text-xl group-hover:underline">
                            Lista knjiga
                        </div>

                        <div class="font-semibold text-sm md:text-md lg:text-lg
                            text-gray-400 group-hover:text-gray-500
                            transition-all duration-200 delay-100">
                            Pregled svih  knjiga u bazi
                        </div>
                    </div>
</a>
 <a href="\books">
                    <!-- Chevron -->
                    <i class="mdi mdi-chevron-right text-gray-400 mdi-24px my-auto pr-2
                        group-hover:text-gray-700 transition-all duration-200 delay-100"></i>

                        
                </div>
            </a>

                <!-- Nav Item #3 -->
                <div class="flex flex-row group px-4 py-8
                    border-t hover:cursor-pointer
                    transition-all duration-200 delay-100">
<a href="\authors">
                    
                    <!-- Nav Icon -->
                    <div class="rounded-xl bg-blue-100 px-3 py-2 md:py-4">
                        <i class="mdi mdi-pencil mx-auto 
                            text-indigo-800 text-2xl md:text-3xl"></i>
                    </div>
                </a>
                <a href="\authors">

                    <!-- Text -->
                    <div class="grow flex flex-col pl-5 pt-2">
                        <div class="font-bold text-sm md:text-lg lg:text-xl group-hover:underline">
                            Autori
                        </div>
                    </a>
                        <div class="font-semibold text-sm md:text-md lg:text-lg
                            text-gray-400 group-hover:text-gray-500
                            transition-all duration-200 delay-100">
                            Spisak svih autora u bazi
                        </div>
                    </div>
<a href="\authors">
                    <!-- Chevron -->
                    <i class="mdi mdi-chevron-right text-gray-400 mdi-24px my-auto pr-2
                        group-hover:text-gray-700 transition-all duration-200 delay-100"></i>
                </div>
            </a>

                <!-- Nav Item #3 -->
                <div class="flex flex-row group px-4 py-8
                    border-t hover:cursor-pointer
                    transition-all duration-200 delay-100">
<a href="\students">
                    <!-- Nav Icon -->
                    <div class="rounded-xl bg-blue-100 px-3 py-2 md:py-4">
                        <i class="mdi mdi-account-group
                            mx-auto text-indigo-800 text-2xl md:text-3xl"></i>
                    </div>
 </a>
 <a href="\students">
                    <!-- Text -->
                    <div class="grow flex flex-col pl-5 pt-2">
                        <div class="font-bold text-sm md:text-lg lg:text-xl group-hover:underline">
                            Studenti
                        </div>
                    </a>
                        <div class="font-semibold text-sm md:text-md lg:text-lg
                            text-gray-400 group-hover:text-gray-500
                            transition-all duration-200 delay-100">
                            Spisak studenata koji su članovi biblioteke
                        </div>
                    </div>
 <a href="\students">
                    <!-- Chevron -->
                    <i class="mdi mdi-chevron-right text-gray-400 mdi-24px my-auto pr-2
                        group-hover:text-gray-700 transition-all duration-200 delay-100"></i>
                </div>
            </a>
            

             <!-- Nav Item #5 -->
                <div class="flex flex-row group px-4 py-8
                    border-t hover:cursor-pointer
                    transition-all duration-200 delay-100">
<a href="\upiti">
                    <!-- Nav Icon -->
                    <div class="rounded-xl bg-blue-100 px-3 py-2 md:py-4">
                        <i class="mdi mdi-database-search
                            mx-auto text-indigo-800 text-2xl md:text-3xl"></i>
                    </div>
 </a>
 <a href="\upiti">
                    <!-- Text -->
                    <div class="grow flex flex-col pl-5 pt-2">
                        <div class="font-bold text-sm md:text-lg lg:text-xl group-hover:underline">
                            Upiti
                        </div>
                    </a>
                        <div class="font-semibold text-sm md:text-md lg:text-lg
                            text-gray-400 group-hover:text-gray-500
                            transition-all duration-200 delay-100">
                           Prikaz odrađenih upita nad bazom
                        </div>
                    </div>
 <a href="\upiti">
                    <!-- Chevron -->
                    <i class="mdi mdi-chevron-right text-gray-400 mdi-24px my-auto pr-2
                        group-hover:text-gray-700 transition-all duration-200 delay-100"></i>
                </div>
            </a>
            </div>
        </div>
    </div>
</div>
    </div>


</x-app-layout>
