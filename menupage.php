<?php
include('connectDB.php');
include('header.php');
?>
<html>

<head>
    <title>Menu</title>
</head>

<body class="bgbg">
    <div class="iniDiv">
        <div class="gridDiv">
            <div class="box">
                <?php
                $sql = "select menu_name, menu_cost , menu_type   from menu where menu_type = 'food'";
                $sql .= " order by menu_name";
                $query = mysqli_query($cid, $sql);
                $result = mysqli_fetch_Array($query);
                ?>
                <table style="padding-top: 10px;">
                    <thead>
                        <div style="text-align: center; padding: top 20px; font-size:xx-large">อาหาร</div>
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
                                    <td style="padding-left: 20px;"><?php echo $result['menu_cost']; ?>.-</td>
                                </tr>
                            <?php } ?>
                        <?php }
                        ?>
                    </tbody>
                </table>
            </div>
            <div class="box">
                <?php
                $sql = "select menu_name, menu_cost , menu_type   from menu where menu_type = 'dessert'";
                $sql .= " order by menu_name";
                $query = mysqli_query($cid, $sql);
                $result = mysqli_fetch_Array($query);
                ?>
                <table style="padding-top: 10px;">
                    <thead>
                        <div style="text-align: center; padding: top 20px; font-size:xx-large">ของหวาน</div>
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
                                    <td style="padding-left: 50px;"><?php echo $result['menu_cost']; ?>.-</td>
                                </tr>
                            <?php } ?>
                        <?php }
                        ?>
                    </tbody>
                </table>
            </div>
            <div class="box">
                <?php
                $sql = "select menu_name, menu_cost , menu_type   from menu where menu_type = 'beverage'";
                $sql .= " order by menu_name";
                $query = mysqli_query($cid, $sql);
                $result = mysqli_fetch_Array($query);
                ?>
                <table style="padding-top: 10px;">
                    <thead>
                        <div style="text-align: center; padding: top 20px; font-size:xx-large">เครื่องดื่ม</div>
                        
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
                                    <td style="padding-left: 100px;"><?php echo $result['menu_cost']; ?>.-</td>
                                </tr>
                            <?php } ?>
                        <?php }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>


    </div>

</body>


</html>
<?php
mysqli_close($cid);
?>