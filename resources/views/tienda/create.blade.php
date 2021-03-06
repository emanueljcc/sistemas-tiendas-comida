@extends('layouts.default')

@section('content')
<div class="col-xs-12 col-sm-12 col-lg-9 col-md-9">
	@include('elementos.flash')
	<input type="hidden" id="create">
	{!!Form::open(['route'=>'tienda.store','method'=>'POST','role'=>'form','class'=>'form-horizontal well','accept-charset'=>'UTF-8','enctype'=>'multipart/form-data','files'=>true])!!}
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<legend bgcolor="lightblue">Tienda</legend>

		@include('tienda.form.form')

		<br>
	{!!Form::reset('Limpiar Formulario',['class'=>'btn btn-danger','onclick'=>'return pregunta_limpiar();'])!!}
	{!!Form::submit('Registrar',['class'=>'btn btn-primary pull-right','onclick'=>'return pregunta_registrar();','id'=>'boton'])!!}

	{!!Form::close()!!}

</div>


@endsection

