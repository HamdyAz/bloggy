<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class PenulisController extends Controller
{
    public function index(){
        $penulis = DB::table('profiles')->get();
        //dd($profiles);
        return view('penulis.index', compact('penulis'));
    }

    public function show($id){
        $post = DB::table('profiles')->where('profiles_id', $id)->first();
        //dd($post);
        return view('penulis.show', compact('post'));
    }
    
    public function edit($id){
        $post = DB::table('profiles')->where('profiles_id', $id)->first();
        //dd($post);
        return view('penulis.edit', compact('post'));
    }

    public function update($id, Request $request){
        $request->validate([
            'profiles_name' => 'required|unique:profiles',
            'profiles_address' => 'required'
        ]);

        $query = DB::table('profiles')
                    ->where('profiles_id', $id)
                    ->update([
                        'profiles_name' => $request['profiles_name'],
                        'profiles_address' => $request['profiles_address'],
                    ]);
        //dd($post);
        return redirect('/penulis')->with('success','Berhasil update');
    }

    public function create() {
        return view('penulis.create');
    }

    public function store(Request $request) {
       //dd($request->all());
       $request->validate([
           'profiles_name' => 'required|unique:profiles',
           'profiles_address' => 'required'
       ]);

       $query = DB::table('profiles')->insert([
        "profiles_name" => $request["profiles_name"],
        "profiles_address" => $request["profiles_address"],
       ]);

       return redirect('/penulis')->with('success','Post Berhasil Disimpan');
    }

}
