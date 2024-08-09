<section class="fullCenter">
  <form method="post" action="index.php?page=ShipperController&action=create">
    <h1 class="col-12">Crear Nuevo Transportista</h1>
    <div>
      <label for="name">Nombre:</label>
      <input type="text" id="name" name="name" />
    </div>
    <div>
      <label for="contactName">Nombre de Contacto:</label>
      <input type="text" id="contactName" name="contactName" />
    </div>
    <div>
      <label for="phone">Teléfono:</label>
      <input type="text" id="phone" name="phone" />
    </div>
    <div>
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" />
    </div>
    <button type="submit">Guardar</button>
  </form>
</section>