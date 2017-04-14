@extends('layouts.default')

@section('content')
<div class="col-xs-12 col-sm-12 col-lg-9 col-md-9">
	@include('elementos.flash')
	{!! Form::model($usuario, ['action' => ['UsuariosController@modificar', $usuario->id, $usuario->encrypted_id], 
					'class' => 'well',
					'method' => 'PUT']) 
	!!}
	<legend bgcolor="lightblue">{{ "Actualizar Usuario" }}</legend>
    	@include('usuarios.formularios.formUsuario')
	{!! Form::close() !!}
</div>
@endsection