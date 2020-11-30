<?php

namespace App\Http\Controllers;

use App\user;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Foundation\Auth\RegistersUsers;
use Spatie\Permission\Traits\HasRoles;

class WriterController extends Controller
{
    use HasRoles;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $penulis = DB::table('users')->where('id','>',4)->get();
        // $penulis = writer::all();
        return view('penulis.index', compact('penulis'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('penulis.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     * @param  array  $data
     * @return \App\User
     */
    public function store(Request $request)
    {
        $request->validate([
            "name" =>'required',
            "email" => 'required',
            "password" => 'required'
        ]);

        $insertQ = user::create([
            "name" => $request["name"],
            "email" => $request["email"],
            "password" => Hash::make($request["password"])
        ]);
        $insertQ->assignRole('writer');

        return redirect('/penulis')->with('success','User Berhasil di Tambahkan');
    }

    /**
     * Show the form for editing the specified resource.

     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        $editQ = User::find($id);
        return view('penulis.edit', compact('editQ'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $request->validate([
            "name" =>'required',
            "email" => 'required',
        ]);

        $updateQ = user::where('id',$id)->update([
            'name' => $request["name"],
            'email' => $request["email"],
        ]);
        return redirect('/penulis')->with('success', 'Data Berhasil diedit!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        writer::destroy($id);
        return redirect('/penulis')->with('success','User Berhasil DiHapus');
    }
}
