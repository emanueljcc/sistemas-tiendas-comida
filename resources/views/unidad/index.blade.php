@extends('layouts.default')

@section('content')
<style type="text/css">
	td{
		text-transform: uppercase;
	}
</style>
<div class="col-xs-12 col-sm-12 col-lg-9 col-md-9">
	@include('elementos.flash')
	<div class="well">

	<legend bgcolor="lightblue">Unidades <a href="{{URL::to('unidad/create')}}" class="btn btn-success btn-sm pull-right"><span class="glyphicon glyphicon-plus"></span> Nueva Unidad</a></legend>

	<table class="table table-hover">
	    <thead>
	      <tr>
	        <th>Unidad</th>
	         <th></th>
	      </tr>
	    </thead>
	    @foreach($querys as $query)
	    <tbody>
	      <tr>
	        <td>{{$query->unidad}}</td>
	        <td class="pull-right"><a href="/unidad/edit/{{$query->id}}" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-edit"></span></a>
	        <a href="/unidad/ver/{{$query->id}}" class="btn btn-success btn-xs" {{-- data-toggle="modal" data-target="#myModal" --}}><span class="glyphicon glyphicon-eye-open"></span></a>
	        <a href="/unidad/destroy/{{$query->id}}" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span></a></td>
	      </tr>
	    </tbody>
	    @endforeach
  	</table>	
	{!!$querys->render()!!}
	</div>
</div>

@endsection

