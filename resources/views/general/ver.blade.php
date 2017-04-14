@extends('layouts.default')
@section('content')
<style type="text/css">
	.upper{
		text-transform: uppercase;
	}
</style>
<div class="col-xs-12 col-sm-12 col-lg-9 col-md-9">
	<div class="well">
		<legend bgcolor="lightblue">Producto - <b class="upper">{{$query->producto}}</b></legend>
		<div class="input-group has-primary" on="">
	    	<span class="input-group-addon">Producto</span>
	    	{!!Form::text('producto',$query->producto,['id'=>'producto','class'=>'form-control upper','disabled'=>'disabled'])!!}
		</div>
		<div class="input-group has-primary" on="">
	    	<span class="input-group-addon">Precio</span>
	    	{!!Form::text('precio',$query->precio,['id'=>'precio','class'=>'form-control upper','disabled'=>'disabled'])!!}
		</div>
		<div class="input-group has-primary" on="">
	    	<span class="input-group-addon">Fecha</span>
	    	{!!Form::text('fecha',$query->fecha,['id'=>'fecha','class'=>'form-control upper','disabled'=>'disabled'])!!}
		</div>
		<div class="input-group has-primary" on="">
			<span class="input-group-addon">Cantidad</span>
	    	{!!Form::text('cantidad',$query->cantidad,['id'=>'cantidad','class'=>'form-control upper','disabled'=>'disabled'])!!}
	    	<span class="input-group-addon">Unidad</span>
	    	{!!Form::text('unidad',$query->unidad,['id'=>'unidad','class'=>'form-control upper','disabled'=>'disabled'])!!}
		</div>
		<div class="input-group has-primary" on="">
	    	<span class="input-group-addon">Direccion</span>
	    	{!!Form::text('direccion',$query->direccion,['id'=>'direccion','class'=>'form-control upper','disabled'=>'disabled'])!!}
		</div>
		<div class="input-group has-primary" on="">
	    	<span class="input-group-addon">Municipio</span>
	    	{!!Form::text('municipio',$municipio,['id'=>'municipio','class'=>'form-control upper','disabled'=>'disabled'])!!}
		</div>
		<div class="input-group has-primary" on="">
	    	<span class="input-group-addon">Parroquia</span>
	    	{!!Form::text('parroquia',$parroquia,['id'=>'parroquia','class'=>'form-control upper','disabled'=>'disabled'])!!}
		</div>
		<br>
		<center><a href="{{ asset('/general') }}"><i class="fa fa-arrow-left" aria-hidden="true"></i> Atras</a></center>
	</div>
</div>
@endsection

