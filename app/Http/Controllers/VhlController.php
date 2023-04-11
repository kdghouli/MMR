<?php

namespace App\Http\Controllers;

use App\Vhl;
use App\Statu;
use App\Agence;
use App\Comment;
use Illuminate\Http\Request;
use App\Http\Resources\VhlResource;
use App\Http\Resources\ListResource;
use App\Intitule;

class VhlController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

     public function viewMain()
    {

        return view('app');

    }
    public function index()
    {

        return VhlResource::collection(Vhl::with(['agence','categorie','intitule','statu','comment'])->get());

    }

    public function ListAgences()
    {
        return  ListResource::collection(Agence::all());
    }
    public function ListComments()
    {
        return  ListResource::collection(Comment::with('vhl')->get());
    }

    public function ListStatus()
    {
        return  ListResource::collection(Statu::all());
    }
    public function ListIntitules()
    {
        return  ListResource::collection(Intitule::with('vhls')->get());
    }




    public function storeComment(Request $request){


        $comment = Comment::create([
            'comment'=>$request->comment,
            'active'=>$request->active,
            'vhl_id'=>$request->vhl_id,
            'statu_id'=>$request->statu_id,
        ]);
        return response()->json([
            'id'=>$comment->id,
            'comment'=>$comment->comment,
            'vhl_id'=>$comment->vhl_id,
            'statu_id'=>$comment->statu_id,


        ]);












    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Vhl  $vhl
     * @return \Illuminate\Http\Response
     */
    public function show(Vhl $vhl)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Vhl  $vhl
     * @return \Illuminate\Http\Response
     */
    public function edit(Vhl $vhl)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Vhl  $vhl
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Vhl $vhl)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Vhl  $vhl
     * @return \Illuminate\Http\Response
     */
    public function destroy(Vhl $vhl)
    {
        //
    }
}
