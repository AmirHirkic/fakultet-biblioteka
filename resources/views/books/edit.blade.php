<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Knjiga-Uredi') }}
        </h2>
    </x-slot>

<div class="py-12" style="background-color:rgb(216, 230, 221)">
    <div class="max-w-7yl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
            <div class="p-2">
              @foreach ($books as $book )
        <form method="POST" action="{{ route('update_book') }}"> 
            @csrf
           <input type="hidden" name="id" value="{{$book->id}}"/>
            <div>
                <x-jet-label for="name" value="{{ __('Naziv') }}" />
                <x-jet-input id="name" class="block mt-1 w-full" type="text" name="name" value="{{$book->name}}" required autofocus autocomplete="name" />
            </div>

<div class="mt-4">
<x-jet-label for="types" value="{{ __('Žanr') }}" />
<select id="types" name="types" class="form-select block w-full mt-1 border-gray-300 focus:border-indigo-300
focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm">
<option selected="true" disabled="disabled">Odaberi</option>
@foreach($types as $type)
<option value="{{$type->id}}"
@if($book->typeId==$type->id) selected
@endif>{{$type->name}}</option>
@endforeach
</select>
</div>


    
<div class="mt-4">
<x-jet-label for="authors" value="{{ __('Autor') }}" />
<select id="authors" name="authors" class="form-select block w-full mt-1 border-gray-300 focus:border-indigo-300
focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm">
<option selected="true" disabled="disabled">Odaberi</option>
@foreach($authors as $author)
<option value="{{$author->id}}"
 @foreach($books_authors as $book_author)
@if($book_author->bookId==$book->id  && $book_author->authorId==$author->id) 
selected 
 @endif
@endforeach 
>{{$author->name}}</option>
@endforeach
</select>
</div>

            <div class="mt-4">
                <x-jet-label for="page" value="{{ __('Sifra') }}" />
                <x-jet-input id="page" class="block mt-1 w-full" type="number" name="page" value="{{$book->pagecount}}" required autofocus />
            </div>



            <div class="flex items-center justify-end mt-4">
                <x-jet-button class="ml-4">
                    {{ __('Spremi') }}
                </x-jet-button>
            </div>
        </form>
        @endforeach
      </div>
        </div>
    </div>
</div>


    </x-app-layout>