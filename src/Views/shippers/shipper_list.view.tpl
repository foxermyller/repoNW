<h1>Lista de Transportistas</h1>
<a href="path_to_create_function">Crear Nuevo Transportista</a>
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
        <?php foreach ($shippers as $shipper): ?>
            <tr>
                <td><?php echo $shipper['ShipperID']; ?></td>
                <td><?php echo $shipper['ShipperName']; ?></td>
                <td><?php echo $shipper['ContactName']; ?></td>
                <td><?php echo $shipper['Phone']; ?></td>
                <td><?php echo $shipper['Email']; ?></td>
                <td>
                    <a href="index.php?page=ShipperController&action=update&id=<?php echo $shipper['ShipperID']; ?>">Actualizar</a>
                    <a href="index.php?page=ShipperController&action=delete&id=<?php echo $shipper['ShipperID']; ?>">Eliminar</a>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
