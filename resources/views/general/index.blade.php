@extends('layouts.default')

@section('content')

<div class="col-xs-12 col-sm-12 col-lg-9 col-md-9">
	@include('elementos.flash')
	<div class="well">

	
<div class="col-md-12">
	<div class="col-md-4">
		<legend bgcolor="lightblue">Listado Productos</legend>
	</div>
	{{ Form::open(array('url' => 'general', 'method' => 'GET','role'=>'search')) }}
	<div class="col-md-5">
		{{ Form::text('producto', null, ['id' =>  'producto', 'placeholder' =>  'Buscar Producto','class'=>'form-control'])}}
	</div>
	<div class="col-md-3">
		{!!Form::submit('Buscar',['class'=>'btn btn-success', 'id'=>''])!!}
	</div>
	{!!Form::close()!!}
</div>
	<!-- <a href="{{URL::to('general/create')}}" class="btn btn-success btn-sm pull-right"><span class="glyphicon glyphicon-plus"></span> Nuevo Registro</a> -->
	<div class="table-responsive">
		<table class="table table-hover">
		    <thead>
		      <tr>
		        <th>Producto</th>
		        <th>Unidad</th>
		        <th>Fecha <i class="fa fa-sort-amount-desc" aria-hidden="true"></i></th>
		        <th>Precio <i class="fa fa-sort-amount-asc" aria-hidden="true"></i></th>
		        <th>Acción</th>
		      </tr>
		    </thead>
		    @foreach($querys as $query)
		    <tbody>
		      <tr>
		        <td style="text-transform: uppercase;">{{$query->producto}}</td>
		        <td style="text-transform: uppercase;">{{$query->unidad}}</td>
		        <td>{{date('d/m/Y',strtotime($query->fecha))}}</td>
		        <td>{{$query->precio}} Bs</td>
		        <td>@if(Auth::user()->tipo == 'admin' || Auth::user()->tipo == 'sudo')<a href="/general/edit/{{$query->id}}" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-edit"></span></a>@endif
		        @if(Auth::user()->tipo == 'usuario' || Auth::user()->tipo == 'admin' || Auth::user()->tipo == 'sudo')<a href="/general/ver/{{$query->id}}" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-eye-open"></span></a>@endif
		        @if(Auth::user()->tipo == 'admin' || Auth::user()->tipo == 'sudo')<a href="/general/destroy/{{$query->id}}" class="btn btn-danger btn-xs" onclick="return pregunta_eliminar();"><span class="glyphicon glyphicon-trash"></span></a>@endif</td>
		      </tr>
		    </tbody>
		    @endforeach
	  	</table>
	  	@if(Auth::user()->tipo == 'usuario')
	  		<center><a href="{{ asset('/general') }}"><i class="fa fa-arrow-left" aria-hidden="true"></i> Atras</a></center>
	  	@endif
  	</div>	
	{!!$querys->render()!!}
	</div>
</div>

<script type="text/javascript">
$( document ).ready(function() {
    $.ajax({
		url:"general/autocomplete",
		type:"GET",
		dataType:"json",
		data:{},
		success: function(dato){
			//var objeto = JSON.parse(dato);
			$( "#producto" ).autocomplete({
				source: dato,
			});
		}
    });
});
			

</script>

@endsection

