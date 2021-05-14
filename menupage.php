<?php
include('connectDB.php');


$sql = "select menu_name, menu_cost , menu_type   from menu";
$sql .= " order by menu_name";
$query = mysqli_query($cid, $sql);
$result = mysqli_fetch_Array($query);
?>
<html>

<head>
    <title>Menu</title>
</head>
<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Cost</th>
            <th>Type</th>
        </tr>
    </thead>
    <tbody>
        <?php $row = mysqli_num_rows($query);
        if ($row == 0) {
        ?> <tr>
                <td colspan="8">No Result</td>
            </tr> <?php
                } else { ?>
            <?php while ($result = mysqli_fetch_Array($query)) { ?>
                <tr>
                    <td><?php echo $result['menu_name']; ?></td>
                    <td><?php echo $result['menu_cost']; ?></td>
                    <td><?php echo $result['menu_type']; ?></td>
                </tr>
            <?php } ?>
        <?php }
        ?>
    </tbody>
</table>

</html>
<?php
mysqli_close($cid);
?>