<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use \App\General;
use \App\Mineral;
use App\Http\Requests\GeneralCreateRequest;
use App\Http\Requests\GeneralUpdateRequest;
use Illuminate\Support\Facades\Redirect;
use Session;
use DB;
use Response;


class ReporteController extends Controller
{

    public function __construct(){
        $this->middleware('auth',['only'=>['index_nombre','nombre_pdf','index_municipio','municipio_pdf']]);
    }

	public function index_nombre(){
        return view('reportes.nombre');
    }

    public function nombre_pdf(Request $request){
    	$desde = $request['desde'];
    	$hasta = $request['hasta'];
    	$querys = DB::table('generals')
                    ->whereBetween('desde', [$desde,$hasta])
                    ->whereBetween('hasta', [$desde,$hasta])
                    ->orderBy('nombre_titular', 'desc')->get();
    	$pdf = \PDF::loadView('reportes.pdf_nombre',['querys'=>$querys,'desde'=>$desde,'hasta'=>$hasta])->setOrientation('landscape');;
    	return $pdf->download('ReporteNombre.pdf');
    }

    public function index_municipio(){
        return view('reportes.municipio');
    }

    public function municipio_pdf(Request $request){
    	$desde = $request['desde'];
    	$hasta = $request['hasta'];
    	$municipio = $request['municipio'];
    	$querys = DB::table('generals')
    				->where('ubicacion', $municipio)
                    ->whereBetween('desde', [$desde,$hasta])
                    ->whereBetween('hasta', [$desde,$hasta])
                    ->orderBy('nombre_titular', 'desc')
                    ->orderBy('ubicacion', 'desc')->get();
        //dd($querys);
    	$pdf = \PDF::loadView('reportes.pdf_nombre',['querys'=>$querys,'desde'=>$desde,'hasta'=>$hasta])->setOrientation('landscape');;
    	return $pdf->download('ReporteMunicipio.pdf');
    }

    public function index_mineral(){
        $groups = ['groups' =>Mineral::orderBy('mineral','desc')->lists('mineral','mineral')];
        return view('reportes.mineral',$groups);
    }

    public function mineral_pdf(Request $request){
        $desde = $request['desde'];
        $hasta = $request['hasta'];
        $mineral = $request['mineral'];
        $querys = DB::table('generals')
                    ->select('nombre_titular',
                             'ubicacion',
                             'mineral',
                             'area',
                             'nombre_cantera',
                             'fecha_inspecciones',
                             'total_mineral',
                             DB::raw('SUM(total_mineral) as total_minerals'))
                    ->where('mineral', $mineral)
                    ->whereBetween('desde', [$desde,$hasta])
                    ->whereBetween('hasta', [$desde,$hasta])
                    ->orderBy('mineral', 'desc')
                    ->get();
        //dd($querys);
        $pdf = \PDF::loadView('reportes.pdf_mineral',['querys'=>$querys,'desde'=>$desde,'hasta'=>$hasta])->setOrientation('landscape');;
        return $pdf->download('ReporteMineral.pdf');
    }


    public function index_modalidad(){
        return view('reportes.modalidad');
    }

    public function modalidad_pdf(Request $request){
        $desde = $request['desde'];
        $hasta = $request['hasta'];
        $modalidad = $request['modalidad'];
        $querys = DB::table('generals')
                    ->where('modalidad', $modalidad)
                    ->whereBetween('desde', [$desde,$hasta])
                    ->whereBetween('hasta', [$desde,$hasta])
                    ->orderBy('modalidad', 'desc')
                    ->get();
        //dd($querys);
        $pdf = \PDF::loadView('reportes.pdf_modalidad',['querys'=>$querys,'desde'=>$desde,'hasta'=>$hasta])->setOrientation('landscape');;
        return $pdf->download('ReporteModalidad.pdf');
    }

}
