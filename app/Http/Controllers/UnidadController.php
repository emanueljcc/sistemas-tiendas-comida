<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use \App\Unidad;
use App\Http\Requests\UnidadCreateRequest;
use Session;
use DB;
use Carbon\Carbon;
use Response;
use Illuminate\Support\Facades\Redirect;

class UnidadController extends Controller
{
    public function index(){
        $querys = Unidad::orderBy('id','desc')->paginate(10);
        return view('unidad.index',compact('querys'));
    }

    public function create(){
        return view('unidad.create');
    }

    public function store(UnidadCreateRequest $request){
        if ($request->isMethod('POST')) {
            Unidad::create([
                    'fecha'=>Carbon::now(),
                    'unidad'=>$request->unidad,
                ]);
            $unidad = $request->input('unidad');
            $this->auditar('Registro un unidad: '.$unidad);
            Session::flash('msj-exito','Registro Exitoso!');
            return Redirect::to('/unidad');
        }
    }   

    public function edit($id){
        $query = Unidad::find($id);
        return view('unidad.edit',['id'=>$query]);
    }

    public function ver($id){
        $query = Unidad::find($id);
        return view('unidad.ver',compact('query'));
    }

    public function update($id, Request $request){
        if ($request->isMethod('PUT')) {
            $query = Unidad::find($id);
            $query->fill($request->all());
            $query->save();
            $unidad = $query->unidad;
            $this->auditar('Actualizo una unidad: '.$unidad);
            Session::flash('msj-exito','Modificación Exitosa');
            return redirect::to('/unidad');
        }
    }

    public function destroy($id){
        Unidad::destroy($id);
        $query = Unidad::find($id);
        $unidad = $query->unidad;
        $this->auditar('Elimino una unidad: '.$unidad);
        Session::flash('msj-exito','Eliminado con Exito');
        return redirect::to('/unidad');
    }
}
