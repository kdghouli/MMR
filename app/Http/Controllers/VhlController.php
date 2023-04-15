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
use Illuminate\Support\Facades\Log;
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

        return VhlResource::collection(Vhl::with(['agence', 'categorie', 'intitule', 'statu', 'comment'])->get());
    }

    public function ListAgences()
    {
        return ListResource::collection(Agence::with('vhls')->get());
    }
    public function ListComments()
    {
        return ListResource::collection(Comment::with('vhl')->get());
    }

    public function ListStatus()
    {
        return ListResource::collection(Statu::all());
    }
    public function ListIntitules()
    {
        return ListResource::collection(Intitule::with('vhls')->get());
    }




    public function storeComment(Request $request)
    {


        $comment = Comment::create([
            'comment' => $request->comment,
            'active' => $request->active,
            'vhl_id' => $request->vhl_id,
            'statu_id' => $request->statu_id,
        ]);
        return response()->json([
            'id' => $comment->id,
            'comment' => $comment->comment,
            'vhl_id' => $comment->vhl_id,
            'statu_id' => $comment->statu_id,


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
    public function storeVhl(Request $request)
    {


        // $vhl = new Vhl;

        // $vhl->matricule = $request->matricule;
        // $vhl->marque = $request->marque;

        // $vhl->save();
        // // Log::channel('stderr')->info('Something happened!');
        // die('ok serveur');
        $vhli = Vhl::create([
            'matricule' => $request->matricule,
            'marque' => $request->marque,
            'date_mc' => $request->date_mc,
            'agence_id' => $request->agence_id,
            'statu_id' => $request->statu_id,
            'categorie_id' => $request->categorie_id,
            'intitule_id' => $request->intitule_id,
            'utilisateur' => $request->utilisateur,
        ]);
        // // die($vhli);
        // // return response()->json([
        // //     'id' => $vhl->id,
        // //     // 'statu_id' => $vhl->statu_id,


        // // ]);
         return response()->json([$request-> $vhli]);





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
    public function updateVhl(Request $request,$id)
    {

        die('ok serveura');


        $vhl = Vhl::findOrFail($id);

        // if(Gate::denies('post.update', $post)) {
        //     abort(403, "You can't edit this post !");
        // }

        $vhl-> matricule = $request->matricule;
        $vhl-> marque = $request->marque;
        $vhl-> date_mc = $request->date_mc;
        $vhl-> agence_id = $request->agence_id;
        $vhl-> statu_id = $request->statu_id;
        $vhl-> categorie_id = $request->categorie_id;
        $vhl-> intitule_id = $request->intitule_id;
        $vhl-> utilisateur = $request->utilisateur;
        $vhl-> save();
        // // die($vhli);
        // // return response()->json([
        // //     'id' => $vhl->id,
        // //     // 'statu_id' => $vhl->statu_id,


        // // ]);
         return response()->json([$request-> $vhl]);


          // Upload Picture for current Post
        //   if($request->hasFile('picture')) {

        //       $path = $request->file('picture')->store('posts');

        //           if($post->image) {
        //             Storage::delete($post->image->path);
        //             $post->image->path = $path;
        //             $post->image->save();
        //           }
        //           else {
        //               $post->image()->save(Image::make(['path' => $path]));
        //           }
        // }

        // $validatedData = $request->validated();

        // // $post->fill($validatedData);
        // $vhl->save();

        // $request->session()->flash('status', 'Blog vhl was updated!');

        // return redirect()->route('/', ['vhl' => $vhl->id]);

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
    public function searchposts($query){
        $posts = Post::where('title','like','%'.$query.'%')->with('user');
        //get all rows //count
        $nbposts = count($posts->get());

        foreach($posts->get() as $post){
            $post->setAttribute('added_at',$post->created_at->diffForHumans());
            $post->setAttribute('comments_count',$post->comments->count());
        }
        $posts = $posts->paginate(intval($nbposts));
        return response()->json($posts);
    }

}
