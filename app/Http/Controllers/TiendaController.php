<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use \App\Tienda;
use App\Http\Requests\TiendaCreateRequest;
use Session;
use DB;
use Carbon\Carbon;
use Response;
use Illuminate\Support\Facades\Redirect;


class TiendaController extends Controller
{
    public function index(){
        $querys = Tienda::orderBy('id','desc')->paginate(10);
        return view('tienda.index',compact('querys'));
    }

    public function create(){
        return view('tienda.create');
    }

    public function store(TiendaCreateRequest $request){
        if ($request->isMethod('POST')) {
            Tienda::create([
                    'fecha'=>Carbon::now(),
                    'tienda'=>$request->tienda,
                ]);
            $tienda = $request->input('tienda');
            $this->auditar('Registro una tienda: '.$tienda);
            Session::flash('msj-exito','Registro Exitoso!');
            return Redirect::to('/tienda');
        }
    }   

    public function edit($id){
        $query = Tienda::find($id);
        return view('tienda.edit',['id'=>$query]);
    }

    public function ver($id){
        $query = Tienda::find($id);
        return view('tienda.ver',compact('query'));
    }

    public function update($id, Request $request){
        if ($request->isMethod('PUT')) {
            $query = Tienda::find($id);
            $query->fill($request->all());
            $query->save();
            $tienda = $query->tienda;
            $this->auditar('Actualizo una tienda: '.$tienda);
            Session::flash('msj-exito','Modificación Exitosa');
            return redirect::to('/tienda');
        }
    }

    public function destroy($id){
        Tienda::destroy($id);
        $query = Tienda::find($id);
        $tienda = $query->tienda;
        $this->auditar('Elimino una tienda: '.$tienda);
        Session::flash('msj-exito','Eliminado con Exito');
        return redirect::to('/tienda');
    }
}
