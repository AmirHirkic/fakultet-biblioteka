<?php

namespace App\Http\Controllers;
use DB;
use App\Models\Book;
use Illuminate\Http\Request;
use App\Http\Controllers\BookAuthorController;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $books = DB::table('books')->get();
        
    

    /* Tabela se ukljucuje u join lanac ako zelis nesto ispisati iz nje ili moras preko nje da bi dosao do
    neke druge tabele koja ti je potrebna */

    // PRVI UPIT: Nazivi knjiga i i njihovih autora, a koje pripadaju žanru 'Historija'
   /* $upit_1  = DB::table('authors')
->select('authors.name as author_name', 'books.name as book_name')
->join('book__authors', 'authors.id', '=', 'book__authors.authorId')
->join('books', 'book__authors.bookId', '=', 'books.id')
->join('types', 'types.id', '=', 'books.typeId')
->where('types.name', 'Historija')
->get();


// DRUGI UPIT: Prikaz imena i prezimena studenata i odsjeka kojem pripadaju a koji su čitali djela Meše Selimovića
$upit_2=DB::table('students')
->select('students.*', 'departments.name as dept_name')
->distinct()
->join('departments', 'departments.id', '=', 'students.classId')
->join('borrows' ,'students.id', '=', 'borrows.studentId')
->join('books' ,'books.id', '=', 'borrows.bookId')
->join('book__authors', 'book__authors.bookId', '=', 'books.id')
->join('authors', 'book__authors.authorId', '=', 'authors.id')
->where('authors.name','Meša Selimović')
->get();

// TREĆI UPIT: Broj pročitanih knjiga, grupisano po odsjecima
$upit_3 = DB::table('departments')
->select('departments.name', DB::raw('count(*) as ukupno_podignuto'))
->join('students','departments.id', '=','students.classId')
->join('borrows','borrows.studentId', '=','students.id')
//->join('books','books.id', '=', 'borrows.bookId')
->groupBy('departments.name')
->get();

// ČETVRTI UPIT: Knjige koje su podignute a nisu vraćene, te imena, prezimena i odsjek studenta koji su ih podigli
$upit_4 = DB::table('students')
->select('students.name', 'students.surname', 'departments.name as odsjek', 'books.name as naziv')
->join('departments', 'departments.id' , '=', 'students.classId')
->join('borrows', 'borrows.studentId' ,'=', 'students.id')
->join('books', 'books.id','=', 'borrows.bookId')
->where('borrows.broughtDate', NULL)
->get();

// PETI UPIT: Ispis knjiga koje nisu nikad posuđivane
$upit_5 = DB::table('books')
->whereNotIn('id', function($q){
$q->select('bookId')->from('borrows');
})
->get();


//  ŠESTI UPIT: Historija podizanja knjiga za nekog studenta
$upit_6=DB::table('students')
->select('students.name', 'students.surname', 'departments.name as odsjek', 'borrows.takenDate', 'borrows.broughtDate',
'books.name as knjiga')
->distinct()
->join('departments', 'students.classId', 'departments.id')
->join('borrows', 'students.id', 'borrows.studentId')
->join('books', 'borrows.bookId', 'books.id')
->where('students.name', 'Amir')
->where('students.surname','like', 'Hir%')
->get();

// SEDMI UPIT: Svi studenti koji pripadaju Elektrotehničkom odsjeku

$upit_7=DB::table('students')
->where('classId',function($p){
$p->select('id')->from('departments')
->where('departments.name','Elektrotehnički odsjek');
})
->get();

/* $upit_5=DB::table('students')
->select('students.name', 'students.surname', 'books.name as title', )
->join('borrows', 'borrows.studentId' ,'=', 'students.id')
->join('books', 'books.id','=', 'borrows.bookId')
->where()
->join(DB::table('borrows')->select('borrows.studentId','borrows.bookId',DB::raw('count(*) as ukupno_podignuto'))
->groupBy('borrows.studentId', 'borrows.bookId')
->having('ukupno_podignuto','>',1)
)
->on('students.id','borrows.studentId')
->get(); */

//$upit_6 = DB::select('select students.classId from students where id = (select students.id from students where students.name = "Amir")')
//$upit_6 = DB::select('select students.name from students  join (select borrows.studentId, borrows.bookId, count(*) as borrow_times from borrows group by borrows.studentId, borrows.bookId having borrow_times > 1) on students.id = borrows.studentId');
//DB::select('select * from users where active = ?', [1])

//$db_7=DB::select('select * from users where id = ?', [1])->DB::table('students'); ovo ne moze
/*$upit_8=DB::select('Select * from books where bookId not in (Select bookId from borrows)')
->join('borrows', 'book.id','=','borrows.bookId');
*/
/* $upit_5=DB::table('books')
->select('books.*')
->join('borrows','books.id','=','borrows.bookId')
->where('books.id','!=','borrows.bookId')
->get(); */

return view('books.index', ['books' =>$books] );


    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $tipovi=DB::table('types')->get();
        $authors=DB::table('authors')->get();
        $books=DB::table('book__authors')->max('id');
        return view('books.add',['tipovi' =>$tipovi,'authors' =>$authors ,'books' =>$books]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */


     public function baza(){

// PRVI UPIT: Nazivi knjiga i i njihovih autora, a koje pripadaju žanru 'Elektronika'
         $upit_1  = DB::table('authors')
->select('authors.name as author_name', 'books.name as book_name')
->join('book__authors', 'authors.id', '=', 'book__authors.authorId')
->join('books', 'book__authors.bookId', '=', 'books.id')
->join('types', 'types.id', '=', 'books.typeId')
->where('types.name', 'Elektronika')
->get();


// DRUGI UPIT: Prikaz imena i prezimena studenata i odsjeka kojem pripadaju a koji su čitali djela Edina Mujčić
$upit_2=DB::table('students')
->select('students.*', 'departments.name as dept_name')
->distinct()
->join('departments', 'departments.id', '=', 'students.classId')
->join('borrows' ,'students.id', '=', 'borrows.studentId')
->join('books' ,'books.id', '=', 'borrows.bookId')
->join('book__authors', 'book__authors.bookId', '=', 'books.id')
->join('authors', 'book__authors.authorId', '=', 'authors.id')
->where('authors.name','Edin Mujčić')
->get();

// TREĆI UPIT: Broj pročitanih knjiga, grupisano po odsjecima
$upit_3 = DB::table('departments')
->select('departments.name', DB::raw('count(*) as ukupno_podignuto'))
->join('students','departments.id', '=','students.classId')
->join('borrows','borrows.studentId', '=','students.id')
//->join('books','books.id', '=', 'borrows.bookId')
->groupBy('departments.name')
->get();

// ČETVRTI UPIT: Knjige koje su podignute a nisu vraćene, te imena, prezimena i odsjek studenta koji su ih podigli
$upit_4 = DB::table('students')
->select('students.name', 'departments.name as odsjek', 'books.name as naziv')
->join('departments', 'departments.id' , '=', 'students.classId')
->join('borrows', 'borrows.studentId' ,'=', 'students.id')
->join('books', 'books.id','=', 'borrows.bookId')
->where('borrows.broughtDate', NULL)
->get();

// PETI UPIT: Ispis knjiga koje nisu nikad posuđivane
$upit_5 = DB::table('books')
->whereNotIn('id', function($q){
$q->select('bookId')->from('borrows');
})
->get();


//  ŠESTI UPIT: Ispis svih knjiga koje je podigao student Amir Hirkić, datuma podizanja i vraćanja tih knjiga
$upit_6=DB::table('students')
->select('students.name','departments.name as odsjek', 'borrows.takenDate', 'borrows.broughtDate',
'books.name as knjiga')
->distinct()
->join('departments', 'students.classId', 'departments.id')
->join('borrows', 'students.id', 'borrows.studentId')
->join('books', 'borrows.bookId', 'books.id')
->where('students.name','like', 'Amir Hir%')
->get();

// SEDMI UPIT: Svi studenti koji pripadaju Elektrotehničkom odsjeku

$upit_7=DB::table('students')
->where('classId',function($p){
$p->select('id')->from('departments')
->where('departments.name','Elektrotehnički odsjek');
})
->get();



return view('books.upiti', ['upit_1' =>$upit_1, 'upit_2' =>$upit_2, 'upit_3' =>$upit_3, 
'upit_4' =>$upit_4, 'upit_5' =>$upit_5, 'upit_6' =>$upit_6 , 'upit_7' =>$upit_7] );
     }
    public function store(Request $request)
    {

        
        $request->validate([
            'name' => 'required|string|max:255',
            
        ]);

        DB::table('books')->insert([
           'name' => $request->name,
           'pagecount' => $request->pages,
           'typeId' => $request->type,

        ]); 

         DB::table('book__authors')->insert([
             'bookId' =>$request->id,
           'authorId' => $request->author,

        ]); 


return redirect()->route('books');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function show(Book $book)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        $id = $request->id;
        $books=DB::table('books')->where('id',$id)->get();
        $authors=DB::table('authors')->get();
        $types=DB::table('types')->get();
        $books_authors=DB::table('book__authors')->get();
 return view('books.edit', ['books'=>$books, 'authors'=>$authors, 'types'=>$types, 'books_authors'=>$books_authors]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id = $request->id;

        $request->validate([
          'name' => 'required|string|max:255',

        ]);

        $update_query = DB::table('books')
        ->where('id', $id)
        ->update([
        'name' =>$request->name,
        'typeId' =>$request->types,
        'pagecount' =>$request->page,


        ]);


        $update_query = DB::table('book__authors')
        ->where('id', $id)
        ->update([
        'authorId' =>$request->authors,
        
        ]);

        return redirect()->route('books');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function destroy(Book $book)
    {
        //
    }

     public function delete(Request $request)
    {
        $id=$request->id;
        Book::destroy($id);
       // BookAuthor::destroy($id);
        return redirect()->route('books');
    }

}
