<?php
	$sql="SELECT * FROM `donhang` JOIN chitietdonhang on donhang.madh = chitietdonhang.madh JOIN sanpham on sanpham.masp = chitietdonhang.masp";
	$query = mysqli_query($conn,$sql);
?>

<div class="container-fluid">
	<div class="table-bordered">
		<div class="card-header">
			<h2>Danh sách Đơn hàng</h2>
		</div>
			<div class="card-body">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>Mã đơn hàng</th>
	
					<th>Tên khách hàng</th>
					<th>Mã sản phẩm</th>
					<th>Tên sản phẩm</th>
					<th>Số lượng</th>
					<th>Địa chỉ</th>
					<th>Ngày lập đơn</th>
					<th>Ngày nhận</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<?php 
				$i=1;
				while($row= mysqli_fetch_assoc($query)){?>
                <tr>
					<td><?php echo $i++?></td>
					<td><?php echo $row['tenkh'];?></td>
					<td><?php echo $row['masp'];?></td>
					<td><?php echo $row['tensp'];?></td>
					<td><?php echo $row['soluong'];?></td>
					<td><?php echo $row['diachi'];?></td>
					<td><?php echo $row['ngaylap'];?></td>
					<td><?php echo $row['ngaynhan'];?></td>
					
					
				</tr>
		<?php }	?>

			</tbody>
		</table>
	

		</div>
	</div>	

</div>
