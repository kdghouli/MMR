<?php

namespace App\Http\Controllers;

use App\Vhl;
use App\Agence;
use Illuminate\Http\Request;
use App\Http\Resources\VhlResource;
use App\Http\Resources\ListResource;

class VhlController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        return VhlResource::collection(Vhl::with(['agence','categorie','intitule','statu','comment'])->get());

    }

    public function ListAgences()
    {
        return  ListResource::collection(Agence::all());
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
