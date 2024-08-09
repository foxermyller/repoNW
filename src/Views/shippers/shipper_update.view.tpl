<section class="fullCenter">
  <form method="post" action="index.php?page=ShipperController&action=update&id={{shipper.ShipperID}}">
    <h1 class="col-12">Actualizar Transportista</h1>
    <div>
      <label for="name">Nombre:</label>
      <input type="text" id="name" name="name" value="{{shipper.ShipperName}}" />
    </div>
    <div>
      <label for="contactName">Nombre de Contacto:</label>
      <input type="text" id="contactName" name="contactName" value="{{shipper.ContactName}}" />
    </div>
    <div>
      <label for="phone">Teléfono:</label>
      <input type="text" id="phone" name="phone" value="{{shipper.Phone}}" />
    </div>
    <div>
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" value="{{shipper.Email}}" />
    </div>
    <button type="submit">Guardar Cambios</button>
  </form>
</section>
