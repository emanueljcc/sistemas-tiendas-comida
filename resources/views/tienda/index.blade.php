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

	<legend bgcolor="lightblue">Tiendas <a href="{{URL::to('tienda/create')}}" class="btn btn-success btn-sm pull-right"><span class="glyphicon glyphicon-plus"></span> Nueva Tienda</a></legend>

	<table class="table table-hover">
	    <thead>
	      <tr>
	        <th>Tienda</th>
	         <th></th>
	      </tr>
	    </thead>
	    @foreach($querys as $query)
	    <tbody>
	      <tr>
	        <td>{{$query->tienda}}</td>
	        <td class="pull-right"><a href="/tienda/edit/{{$query->id}}" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-edit"></span></a>
	        <a href="/tienda/ver/{{$query->id}}" class="btn btn-success btn-xs" {{-- data-toggle="modal" data-target="#myModal" --}}><span class="glyphicon glyphicon-eye-open"></span></a>
	        <a href="/tienda/destroy/{{$query->id}}" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span></a></td>
	      </tr>
	    </tbody>
	    @endforeach
  	</table>	
	{!!$querys->render()!!}
	</div>
</div>

@endsection

