<div id="" class="input-group">
	<span class="input-group-addon">Usuario</span>
		{!! Form::text('username', null, ['class' => 'form-control']) !!}
</div>
<br>
<div id="" class="input-group">
	<span class="input-group-addon">Cedula</span>
		{!! Form::text('cedula', null, ['class' => 'form-control']) !!}
</div>
<br>
<div id="" class="input-group">
	<span class="input-group-addon">Elegir Tienda</span>
		{!! Form::select('tienda',$groups,null,['id'=>'tienda','class'=>'form-control','placeholder'=>'Selecciona Tienda','style'=>'text-transform:uppercase;']) !!}
</div>
<br>
@if($verClave)
	<div id="" class="input-group">
		<span class="input-group-addon">Clave</span>
			{!! Form::password('password', ['class' => 'form-control']) !!}
	</div>
	<br>
	<div id="" class="input-group">
		<span class="input-group-addon">Repita su clave</span>
			{!! Form::password('password_confirmation', ['class' => 'form-control']) !!}
	</div>
	<br>
@endif
<div id="" class="input-group">
	<span class="input-group-addon">Tipo</span>
		{!!Form::select('tipo', ['usuario' => 'Usuario', 'admin' => 'Administrador'], null, ['placeholder' => 'Elija una opcion', 'class' => 'form-control'])!!}
</div>
<br>
<div class="form-group">
    <div class="input-group">
    <span class="input-group-btn">
    {!!Form::button('Limpiar Formulario', ['type' => 'reset', 'class'=>'btn btn-danger'])!!}
    </span>
    	{!!Form::submit('Guardar', ['class'=>'btn btn-primary pull-right'])!!}
      </div>
</div>


