<?php 

include("../model/userModel.php");
$con = getConnection();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
$searchdata=$_POST['serachdata'];

?>




<table border="1" cellspacing="0">

    <tr>
     <th>Sno.</th>
        <th>Name</th>
        <th>Mobile Number</th>
        <th>Location </th>
        <th>Message</th>
        <th>Reporting Time</th>
        <th>Action</th>
    </tr>


<?php $query=mysqli_query($con,"select * from tblfirereport where   fullName like '%$searchdata%' || mobileNumber like '%$searchdata%' || location like '%$searchdata%'");
$cnt=1;
while($row=mysqli_fetch_array($query)){
?>
 <tr>
    <td><?php echo $cnt;?></td>
    <td><?php echo $row['fullName'];?></td>
    <td><?php echo $row['mobileNumber'];?></td>
    <td><?php echo $row['location'];?></td>
    <td><?php echo $row['message'];?></td>
    <td><?php echo $row['postingDate'];?></td>
    <td>

<a href="request-details.php?requestid=<?php echo $row['id'];?>">View</a> 

    </td>
</tr>
<?php $cnt++;
    } ?>
                                 
</table>
</body>
</html>