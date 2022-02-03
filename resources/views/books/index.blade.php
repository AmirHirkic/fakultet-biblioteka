<x-app-layout>
    <link rel="stylesheet" href="https://cdn.materialdesignicons.com/6.5.95/css/materialdesignicons.min.css">
    <x-slot name="header" style="background-color:rgb(216, 230, 221)">
      
    </x-slot>

    <div class="py-12" style="background-color:#d8e6dd" >
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <a href="\add_book" class="m-2 p-2 text-xl"><button  style="background-color:rgb(41, 27, 168)" class="ml-4 inline-flex items-center px-4 py-2  border border-transparent rounded-md
                      font-semibold text-xs text-white uppercase ml-4">Dodaj knjigu</button></a>
                      <br>
                       
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
              <div class="p-2">

                
<!-- OVDJE SVI UPITI-->

                  @foreach ($books as $book )
                  <div class="flex space-x-4">
                       <div class="flex-1">{{ $book->name }}</div>
                  <div class="flex-1">
                      <form method="POST" action="{{route('delete_book')}}">
                      @csrf
                      <input type="hidden" name="id" value="{{$book->id}}">
                      <div class="p-2">
                      <button  class="ml-4 inline-flex items-center px-4 py-2 bg-red-700  border border-transparent rounded-md
                      font-semibold text-xs text-white uppercase ml-4">
                      {{__('Obrisi')}}
                      </button>
                      </div>
                      </form>
                      </div>

                      <!-- Edit-->

                      <div class="flex-1">
                       <form method="POST" action="{{route('edit_book')}}">
                      @csrf
                      <input type="hidden" name="id" value="{{$book->id}}">
                      <div class="p-2">
                      <button style="background-color:rgb(16, 160, 66)" class="ml-4 inline-flex items-center px-4 py-2 border border-transparent rounded-md font-semibold text-xs text-white uppercase">
                      {{__('Uredi')}}
                      </button>
                      </div>
                      </form>
                      </div>
                    </div>
                 @endforeach
              </div>
            </div>
        </div>
    </div>

    
   

</x-app-layout>