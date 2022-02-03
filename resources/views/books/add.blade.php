<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Knjige-Dodaj') }}
        </h2>
    </x-slot>
    <div class="py-12" style="background-color:rgb(216, 230, 221)">
    <div class="max-w-7yl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
            <div class="p-2">
        <form method="POST" action="{{ route('store_book') }}"> 
            @csrf

            <div>
                <input type="hidden" name="id" value="{{$books+1}}">
                <x-jet-label for="name" value="{{ __('Naziv') }}" />
                <x-jet-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
            </div>

<div class="mt-4">
<x-jet-label for="type" value="{{ __('Žanr') }}" />
<select id="type" name="type" class="form-select block w-full mt-1 border-gray-300 focus:border-indigo-300
focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm">
<option selected="true" disabled="disabled">Odaberi</option>
@foreach($tipovi as $tip)
<option value="{{$tip->id}}">{{$tip->name}}</option>
@endforeach
</select>
</div>

<div class="mt-4">
<x-jet-label for="author" value="{{ __('Autor') }}" />
<select id="author" name="author" class="form-select block w-full mt-1 border-gray-300 focus:border-indigo-300
focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm">
<option selected="true" disabled="disabled">Odaberi</option>
@foreach($authors as $author)
<option value="{{$author->id}}">{{$author->name}}</option>
@endforeach
</select>
</div>

            <div class="mt-4">
                <x-jet-label for="pages" value="{{ __('Broj stranica') }}" />
                <x-jet-input id="pages" class="block mt-1 w-full" type="number" name="pages" required autofocus />
            </div>




            <div class="flex items-center justify-end mt-4">
               

                <x-jet-button class="ml-4">
                    {{ __('Spremi') }}
                </x-jet-button>
            </div>
        </form>
      </div>
        </div>
    </div>
</div>

</x-app-layout>