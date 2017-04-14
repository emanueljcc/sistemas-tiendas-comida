@extends('layouts.default')

@section('content')
<div class="col-xs-12 col-sm-12 col-lg-9 col-md-9">
	<div class="well">
		<div class="col-md-12 text-center">
			TIENDA: <b style="text-transform:uppercase;">@foreach($query as $var) {{$var->tienda}} @endforeach</b>
		</div>
		<div class="col-md-12">
		    <center><img src="img/ejemplo.png" alt="" style="margin-top: 2em; width:70%; height: 19em;"></center>
		</div>
	</div>	
	@include('elementos.flash')
</div>
@endsection