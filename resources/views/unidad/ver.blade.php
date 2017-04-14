@extends('layouts.default')
@section('content')
<div class="col-xs-12 col-sm-12 col-lg-9 col-md-9">
	<div class="well">
		<legend bgcolor="lightblue">Unidad - <b style="text-transform: uppercase;">{{$query->unidad}}</b></legend>
		<div class="input-group has-primary" on="">
	    	<span class="input-group-addon">Unidad</span>
	    	{!!Form::text('unidad',$query->unidad,['id'=>'unidad','class'=>'form-control','disabled'=>'disabled','style'=>'text-transform:uppercase;'])!!}
		</div>
	</div>
</div>
@endsection

