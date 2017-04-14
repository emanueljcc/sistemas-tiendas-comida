@extends('layouts.default')
@section('content')
<div class="col-xs-12 col-sm-12 col-lg-9 col-md-9">
	<div class="well">
		<legend bgcolor="lightblue">Tienda - <b style="text-transform: uppercase;">{{$query->tienda}}</b></legend>
		<div class="input-group has-primary" on="">
	    	<span class="input-group-addon">Tienda</span>
	    	{!!Form::text('tienda',$query->tienda,['id'=>'tienda','class'=>'form-control','disabled'=>'disabled','style'=>'text-transform:uppercase;'])!!}
		</div>
	</div>
</div>
@endsection

