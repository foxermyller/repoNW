<h1>Lista de Transportistas</h1>
<a href="index.php?page=ShipperController&action=create">Crear Nuevo Transportista</a>
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
                <td><?php echo htmlspecialchars($shipper['ShipperID']); ?></td>
                <td><?php echo htmlspecialchars($shipper['ShipperName']); ?></td>
                <td><?php echo htmlspecialchars($shipper['ContactName']); ?></td>
                <td><?php echo htmlspecialchars($shipper['Phone']); ?></td>
                <td><?php echo htmlspecialchars($shipper['Email']); ?></td>
                <td>
                    <a href="index.php?page=ShipperController&action=update&id=<?php echo urlencode($shipper['ShipperID']); ?>">Actualizar</a>
                    <a href="index.php?page=ShipperController&action=delete&id=<?php echo urlencode($shipper['ShipperID']); ?>">Eliminar</a>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
