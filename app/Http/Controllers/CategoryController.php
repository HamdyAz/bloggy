<?php

namespace App\Http\Controllers;
use DB;
use App\category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $kategori = category::all();
        return view('kategori.index', compact('kategori'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('kategori.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'cat_title' => 'required|unique:categorie',
            'cat_description' => 'required'
        ]);
 
        $query = DB::table('categorie')->insert([
         "cat_title" => $request["cat_title"],
         "cat_description" => $request["cat_description"],
        ]);
 
        return redirect('/kategori')->with('success','Post Berhasil Disimpan');    }

    /**
     * Display the specified resource.
     *
     * @param  \App\category  $category
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = DB::table('categorie')->where('cat_id', $id)->first();
        //dd($post);
        return view('kategori.show', compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = DB::table('categorie')->where('cat_id', $id)->first();
        //dd($post);
        return view('kategori.edit', compact('post'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $request->validate([
            'cat_title' => 'required',
            'cat_description' => 'required'
        ]);

        $query = DB::table('categorie')
                    ->where('cat_id', $id)
                    ->update([
                        'cat_title' => $request['cat_title'],
                        'cat_description' => $request['cat_description'],
                    ]);
        //dd($post);
        return redirect('/kategori')->with('success','Berhasil update');    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $post = DB::table('categorie')->where('cat_id', $id)->delete();
        return redirect('/kategori')->with('success','Berhasil dihapus');
    }
}
