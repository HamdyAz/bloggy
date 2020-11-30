<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class KategoriController extends Controller
{
    public function index(){
        $kategori = DB::table('categorie')->get(); //select * from pertanyaan
        //dd($kategori);
        return view('kategori.index', compact('kategori'));
    }

    public function show($id){
        $post = DB::table('categorie')->where('cat_id', $id)->first();
        //dd($post);
        return view('kategori.show', compact('post'));
    }
    
    public function edit($id){
        $post = DB::table('categorie')->where('cat_id', $id)->first();
        //dd($post);
        return view('kategori.edit', compact('post'));
    }

    public function update($id, Request $request){
        $request->validate([
            'cat_title' => 'required|unique:categorie',
            'cat_description' => 'required'
        ]);

        $query = DB::table('categorie')
                    ->where('cat_id', $id)
                    ->update([
                        'cat_title' => $request['cat_title'],
                        'cat_description' => $request['cat_description'],
                    ]);
        //dd($post);
        return redirect('/kategori')->with('success','Berhasil update');
    }

    public function create() {
        return view('kategori.create');
    }

    public function store(Request $request) {
       //dd($request->all());
       $request->validate([
           'cat_title' => 'required|unique:categorie',
           'cat_description' => 'required'
       ]);

       $query = DB::table('categorie')->insert([
        "cat_title" => $request["cat_title"],
        "cat_description" => $request["cat_description"],
       ]);

       return redirect('/kategori')->with('success','Post Berhasil Disimpan');
    }

    public function destroy($id){
        $post = DB::table('categorie')->where('cat_id', $id)->delete();
        //dd($post);
        return redirect('/kategori')->with('success','Berhasil dihapus');
    }
}
