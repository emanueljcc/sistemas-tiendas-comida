@extends('layouts.default')

@section('content')

<div class="col-xs-12 col-sm-12 col-lg-9 col-md-9">
	@include('elementos.flash')

	<div class="well">

		<legend bgcolor="lightblue">Inventario</legend>
		<input type="hidden" id="edit">
			{!!Form::model($id,['route'=>['general.update',$id->id],'role'=>'form','class'=>'form-horizontal','method'=>'PUT','files'=>true])!!}
						
						@include('general.form.form')
						<br>
			{!!Form::submit('Actualizar',['class'=>'btn btn-primary pull-right','id'=>'boton'])!!}
				
								

			{!!Form::close()!!}

			{!!Form::open(['route'=>['general.destroy',$id->id],'role'=>'form','class'=>'form-horizontal','method'=>'DELETE'])!!}
							
				{!!Form::submit('Eliminar',['class'=>'btn btn-danger pull-left','onclick'=>'return pregunta_eliminar();'])!!}
								
			{!!Form::close()!!}
			<br>
	</div>
		
</div>




@endsection

