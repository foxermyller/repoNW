<section class="fullCenter">
  <h1 class="col-12">Lista de Transportistas</h1>
  <a href="index.php?page=ShipperController&action=create" class="primary">Crear Nuevo Transportista</a>
  <table>
    <thead>
      <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Contacto</th>
        <th>Teléfono</th>
        <th>Email</th>
        <th>Acciones</th>
      </tr>
    </thead>
    <tbody>
      {{foreach shippers as shipper}}
      <tr>
        <td>{{shipper.ShipperID}}</td>
        <td>{{shipper.ShipperName}}</td>
        <td>{{shipper.ContactName}}</td>
        <td>{{shipper.Phone}}</td>
        <td>{{shipper.Email}}</td>
        <td>
          <a href="index.php?page=ShipperController&action=update&id={{shipper.ShipperID}}">Actualizar</a>
          <a href="index.php?page=ShipperController&action=delete&id={{shipper.ShipperID}}" onclick="return confirm('¿Está seguro de que desea eliminar?')">Eliminar</a>
        </td>
      </tr>
      {{endforeach}}
    </tbody>
  </table>
</section>
