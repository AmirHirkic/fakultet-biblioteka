
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('UPITI') }}
        </h2>
    </x-slot>

    <div class="py-12" style="background-color:rgb(216, 230, 221)">
        
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
           
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <h2 align="center" class="font-xl">Upiti izvršeni nad bazom</h2>
                       <table class="table table-striped">
                  
<tbody>
  <tr>
             <td>    @foreach ($upit_1 as $prvi_upit )
                 <p>{{ $prvi_upit->author_name }} - {{ $prvi_upit->book_name  }}</p>
                     
                 @endforeach
             </td>
  </tr>

                 
                 <tr>
                   <td>

                  @foreach ($upit_2 as $drugi_upit )
                 <p>{{ $drugi_upit->name }} - {{$drugi_upit->dept_name}}</p>
                     
                 @endforeach
                   </td>
                  </tr>
                 
<tr>
  <td>
                  @foreach ($upit_3 as $treci_upit )
                 <p>{{ $treci_upit->name }} - {{$treci_upit->ukupno_podignuto}}</p>
                     
                 @endforeach
  </td>
</tr>


<tr>
  <td>

                  @foreach ($upit_4 as $cetvrti_upit )
                 <p>{{ $cetvrti_upit->naziv }} - {{ $cetvrti_upit->name }}, {{ $cetvrti_upit->odsjek }}</p>
                     
                 @endforeach
  </td></tr>

  <tr>
    <td>
                 

                  @foreach ($upit_5 as $peti_upit )
                 <p> {{ $peti_upit->name }}</p>
                     
                 @endforeach

    </td></tr>   
 <tr>
   <td>
@foreach ($upit_6 as $sesti_upit )
                 <p> {{ $sesti_upit->name }}, {{ $sesti_upit->odsjek }} - {{ $sesti_upit->knjiga }},
                    {{ $sesti_upit->takenDate }} : {{ $sesti_upit->broughtDate }}
                 </p>

                @endforeach
                </td>
 </tr>
 <tr>
   <td>
                           
@foreach ($upit_7 as $sedmi_upit )
                 <p> {{ $sedmi_upit->name }}, {{ $sedmi_upit->birthdate }}
                 </p>

                @endforeach

   </td></tr>
                               </tbody>
</table>
                   
            </div>
        </div>
    </div>

 
</x-app-layout>
