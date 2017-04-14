@extends('layouts.default')

@section('content')
<style>
    .upper{
        text-transform: uppercase;
    }
</style>
<div class="col-xs-12 col-sm-12 col-lg-9 col-md-9" style="text-align: center">
    @include('elementos.flash')
    <div class="media">
        <a class="pull-left" href="#" style="text-align: center"></a>
        <div id="tablaRegistros" class="media-body">
            <!-- Table -->
          <table id="tablaReg" class="table">
            <tr bgcolor='FFAF36'>
                <td width="2%" class="upper" style="font-weight:bold;">Usuario</td>
                <td class="upper" style="font-weight:bold;">Cedula</td>
                <td class="upper" style="font-weight:bold;">Tienda</td>
                <td class="upper" style="font-weight:bold;">Tipo</td>
                <td class="upper" style="font-weight:bold;">Estatus</td>
                <td class="upper" style="font-weight:bold;">Acción</td>
            </tr>
            @if(isset($usuarios[0]))
                @foreach($usuarios as $usuario)
                    @if($usuario->tipo == 'sudo')
                    
                    @else
                    
                        <tr>
                            <td class="upper">  {{ $usuario->username }} </td>
                            <td>  {{ $usuario->cedula }} </td>
                            <td class="upper">  {{ $usuario->tienda }} </td>
                            <td class="upper">  {{ $usuario->tipo }} </td>
                            <td class="upper"> {{  ( ($usuario->estatus % 2 )  == 0 ) ? 'Suspendido' : 'Activo' }} </td>
                            <td> {!! Form::open(['action' => ['UsuariosController@eliminar', $usuario->id, $usuario->encrypted_id],'method' => 'DELETE']) !!}
                             
                             {!!link_to_action('UsuariosController@modificar', $title = 'Actualizar', $parameters = [$usuario->id, $usuario->encrypted_id], $attributes = ['class' => 'btn btn-success btn-xs'])!!}
                          
                                {!!Form::submit('Eliminar', ['class'=>'btn btn-danger btn-xs','onclick'=>'return pregunta_eliminar();'])!!}

                            {!!link_to_action('UsuariosController@cambiarEstatus', $title = 'Cambiar Estatus', $parameters = [$usuario->id, $usuario->encrypted_id], $attributes = ['class' => 'btn btn-primary btn-xs'])!!}

                            {!!link_to_action('UsuariosController@cambiarClave', $title = 'Cambiar Clave', $parameters = [$usuario->id, $usuario->encrypted_id], $attributes = ['class' => 'btn btn-info btn-xs'])!!}

                            {!! Form::close() !!}

                           </td>
                        </tr>
                    @endif
                @endforeach
            @else
                <tr>
                    <td colspan="7">No existen registros</td>
                </tr>
            @endif

          </table>
          <div class="pagination" style="text-align:center">
                {!! $usuarios->render() !!}
          </div> 
           <p> Página {{ $usuarios->currentPage() }} de {{ $usuarios->lastPage() }} </p>
        </div>
    </div>
</div>
@endsection