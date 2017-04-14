<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use \App\General;
use \App\Unidad;
use \App\Municipio;
use \App\Parroquia;
use Illuminate\Support\Facades\Redirect;
use App\Http\Requests\GeneralCreateRequest;
use Session;
use DB;
use Carbon\Carbon;
use Response;
use Auth;

class GeneralController extends Controller
{

    public function autocomplete(Request $request){
        //$term = $request->input('term'); // terminos jquery ui
        $result = [];
            $queries = DB::table('generals')->get(['producto']);  
            foreach ($queries as $query) {
                $result[]=$query->producto;
            }
        
        return Response::json($result); // enviar la repsuesta Json
    }

    public function getParroquias(Request $request, $id){
        if ($request->ajax()) {
            $parroquias = Parroquia::parroquias($id);
            return response()->json($parroquias);
        }
    }

	public function index(Request $request){
        $tipo = Auth::user()->tipo;
        if($tipo == 'sudo' || $tipo == 'usuario'){
            $querys = General::name($request->get('producto'))->orderBy('precio','asc','fecha','desc')->paginate(12);
        }else{
            $querys = General::name($request->get('producto'))->where('id_tienda',Auth::user()->tienda)->orderBy('precio','asc','fecha','desc')->paginate(12);
        }
            return view('general.index',compact('querys'));
    }



    public function create(){
        $municipios = Municipio::lists('name','id');
        $groups = ['groups' =>Unidad::orderBy('unidad','asc')->lists('unidad','unidad')];
        $parroquias= ['placeholder' => 'Seleccione'];
        return view('general.create',$groups,compact('municipios', 'parroquias'));
    }

    public function store(GeneralCreateRequest $request){
        if ($request->isMethod('POST')) {
            General::create([
                    'producto'=>$request->producto,
                    'precio'=>$request->precio,
                    'fecha'=>Carbon::now(),
                    'cantidad'=>$request->cantidad,
                    'unidad'=>$request->unidad,
                    'direccion'=>$request->direccion,
                    'municipio'=>$request->municipio,
                    'parroquia'=>$request->parroquia,
                    'id_tienda'=>Auth::user()->tienda,
                ]);
            $producto = $request->input('producto');
            $this->auditar('Registro un producto: '$producto);
            Session::flash('msj-exito','Registro Exitoso!');
            return Redirect::to('/general');
        }
    }   

    public function edit($id){
        $municipios = Municipio::lists('name','id');
        $groups = ['groups' =>Unidad::orderBy('unidad','asc')->lists('unidad','unidad')];
        $query = General::find($id);
        $parroquias = Parroquia::where('id', $query->parroquia)->lists('name','id');
        return view('general.edit',$groups,['id'=>$query,'municipios'=>$municipios,'parroquias'=>$parroquias]);
    }

    public function ver($id){
        $query = General::find($id);
        $municipio = Municipio::find($query->municipio)->name;
        $parroquia = Parroquia::find($query->parroquia)->name;
        return view('general.ver',compact('query','municipio','parroquia'));
    }

    public function update($id, Request $request){
        if ($request->isMethod('PUT')) {
            $query = General::find($id);
            $producto = $query->producto;
            $query->fill($request->all());
            $query->save();
            $this->auditar('Actualizo un producto: '.$producto);
            Session::flash('msj-exito','Modificación Exitosa');
            return redirect::to('/general');
        }
    }

    public function destroy($id){
        General::destroy($id);
        $query = General::find($id);
        $producto = $query->producto;
        $this->auditar('Elimino un producto');
        Session::flash('msj-exito','Eliminado con Exito: '.$producto);
        return redirect::to('/general');
    }
}
