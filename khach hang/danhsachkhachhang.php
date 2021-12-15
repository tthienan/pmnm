<?php
	$sql="select * from khachhang";
	$query = mysqli_query($conn,$sql);
?>
<div class="container-fluid">
	<div class="card">
		<div class="card-header">
			<h2>Danh sách khách hàng</h2>
		</div>
			<div class="card-body">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>Mã khách hàng</th>
					<th>Tên khách hàng</th>
					<th>Địa chỉ</th>
					<th>SĐT</th>
				</tr>
			</thead>
			<tbody>
				<?php 
				$i=1;
				while($row= mysqli_fetch_assoc($query)){?>
                <tr>
					<td><?php echo $i++?></td>
					<td><?php echo $row['tenkh'];?></td>
					<td><?php echo $row['diachi'];?></td>
					<td><?php echo $row['sdt'];?></td>
					
				</tr>
		<?php }	?>

			</tbody>
		</table>
			
		</div>
	</div>	

</div>
