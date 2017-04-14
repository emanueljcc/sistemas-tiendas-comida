<?php
/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

	

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/



Route::group(['middleware' => ['web']], function () {
	Route::match(['get', 'post'], '/login', 'AutenticacionController@login');

	Route::get('/acceso-negado', ['middleware' => ['BlockIp'], 'as' => 'bloqueo', function () {
	    return view('autenticacion.bloqueo');
	}]);
});

Route::group(['middleware' => ['web', 'authGroup']], function () {

	Route::get('/', ['as' => 'index', function () {
			$query = DB::table('usuarios')->join('tiendas', 'usuarios.tienda', '=', 'tiendas.id')
	            ->select('tiendas.tienda')
	            //->where('usuarios.tienda','=',26)
	            ->where([
				    ['usuarios.tienda', '=', Auth::user()->tienda],
				    ['username', '=', Auth::user()->username],
				])
	            ->get();
	            if(Auth::user()->tipo == 'usuario'){
	            	return Redirect::to('/general');
	            }
		    return view('autenticacion.index',['query'=>$query]);
	}]);
//-----------Autenticacion Controller----------------------
	Route::get('/salir', 'AutenticacionController@logout');

//-----------Auditoria Controller--------------------------
	Route::get('/auditoria/listar', 'AuditoriaController@listar');
	Route::get('/auditoria/monitoreo-ip', 'AuditoriaController@monitoreoIp');
	Route::get('/auditoria/desbloquear-ip/{ip}', 'AuditoriaController@desbloquearIp');

//-----------Usuarios Controller---------------------------
	Route::get('/usuarios/listar', 'UsuariosController@listar');
	Route::match(['get', 'post'], '/usuarios/registrar', 'UsuariosController@registrar');
	Route::match(['get', 'put'], '/usuarios/actualizar/{id}/{encrypted_id}', 'UsuariosController@modificar');
	Route::delete('/usuarios/eliminar/{id}/{encrypted_id}', 'UsuariosController@eliminar');
	Route::match(['get', 'put'], '/usuarios/cambiar-clave/{id}/{encrypted_id}', 'UsuariosController@cambiarClave');
	Route::get('/usuarios/cambiar-estatus/{id}/{encrypted_id}', 'UsuariosController@cambiarEstatus');


//-----------GENERAL Controller---------------------------
	Route::get('general_pdf/{id}','GeneralController@general_pdf');
	Route::get('general/destroy/{id}','GeneralController@destroy');
	Route::get('general/edit/{id}','GeneralController@edit');
	Route::get('general/ver/{id}','GeneralController@ver');
	Route::get('general/autocomplete', 'GeneralController@autocomplete');
	Route::resource('general','GeneralController');

//-----------Unidad Controller---------------------------
	Route::get('unidad/destroy/{id}','UnidadController@destroy');
	Route::get('unidad/edit/{id}','UnidadController@edit');
	Route::get('unidad/ver/{id}','UnidadController@ver');
	Route::get('unidad/autocomplete', 'UnidadController@autocomplete');
	Route::resource('unidad','UnidadController');

//-----------Tienda Controller---------------------------
	Route::get('tienda/destroy/{id}','TiendaController@destroy');
	Route::get('tienda/edit/{id}','TiendaController@edit');
	Route::get('tienda/ver/{id}','TiendaController@ver');
	Route::get('tienda/autocomplete', 'TiendaController@autocomplete');
	Route::resource('tienda','TiendaController');

//-----------Rutas Select Municipio Parroquias---------------------------
	Route::get('parroquias/{id}','GeneralController@getParroquias');


});
