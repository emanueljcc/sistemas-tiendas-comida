<style type="text/css">
  .upper{
    text-transform: uppercase;
  }
</style>
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Producto:</label>
    <div class="col-sm-10">
      {!!Form::text('producto',null,['id'=>'producto','class'=>'form-control upper','placeholder'=>'Ejemplo: Maíz'])!!}
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Precio:</label>
    <div class="col-sm-10"> 
      {!!Form::number('precio',null,['id'=>'precio','class'=>'form-control upper','placeholder'=>'Ejemplo: 1000'])!!}
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Cantidad/Unidad:</label>
    <div class="col-sm-5"> 
      {!!Form::number('cantidad',null,['id'=>'cantidad','class'=>'form-control upper','placeholder'=>'Ejemplo de cantidad: 100'])!!}
    </div>
    <div class="col-sm-5"> 
      {{ Form::select('unidad', $groups,null, ['placeholder' => 'Seleccione la unidad','class'=>'selectpicker form-control upper','id'=>'unidad','style'=>'text-transform:uppercase;']) }}
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Dirección:</label>
    <div class="col-sm-10"> 
      {!!Form::text('direccion',null,['id'=>'direccion','class'=>'form-control upper','placeholder'=>'Ejemplo: Av. Pinto Salinas'])!!}
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Municipio:</label>
    <div class="col-sm-4"> 
      {!! Form::select('municipio',$municipios,null,['id'=>'municipio','class'=>'form-control upper','placeholder'=>'Selecciona']) !!}
    </div>
    <label class="control-label col-sm-2" for="pwd">Parroquia:</label>
    <div class="col-sm-4"> 
       {!! Form::select('parroquia',$parroquias,null,['id'=>'parroquia','class'=>'form-control upper']) !!}
    </div>
  </div>

<script type="text/javascript">
  $("#municipio").change(function(event){
    $.get("/parroquias/"+event.target.value+"",function(response,municipio){
      $("#parroquia").empty();
      for(i=0; i<response.length; i++){
        $("#parroquia").append("<option value='"+response[i].id+"'> "+response[i].name+"</option>");
      };
    });
  });
</script>