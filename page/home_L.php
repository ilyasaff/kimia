			<p/><p/><table height="20px"  width="300px" bgcolor="" align="center">
			<td colspan="2"><div align="center"><font size="1px" color="red">
			<!-- Page Head -->
                <?php if(isset($_GET['sukses'])){?>
                <div class="notification success png_bg">
				<a href="#" class="close"><img src="images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
				<div><?php echo $_GET['sukses'];?></div>
				</div>
				<?php } ?>
				
				<?php if(isset($_GET['gagal'])){?>
                <div class="notification error png_bg">
				<a href="#" class="close"><img src="images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
				<div><?php echo $_GET['gagal'];?></div>
				</div>
				<?php } ?>
			
			<p>
			<h3>Selamat datang, <?php if ($_SESSION['level']==1){echo $_SESSION['userid'];}else{echo ucwords(strtolower($_SESSION['userid']));}?>.<h3/>
			<?php
			 if($_SESSION['level']==10){
			?>
			<br/><br/>
			<h3>Anda Login sebagai Member,
			<?php
			}else if($_SESSION['level']==20){
			?>
			<br/><br/>
			<?php
			}
			?>
			
			</h3><hr/>
			</div></td></fieldset> 
			</table>
			
			<p colspan="2"><div align="center"><img src="images/images.jpg" height="200px" width="400px"/></div></p></fieldset> 
			
	
	<p>Sistem pakar adalah sebuah perangkat lunak komputer yang memiliki basis pengetahuan untuk domain tertentu dan menggunakan penalaran inferensi menyerupai seorang pakar dalam memecahkan masalah. Sistem Pakar adalah salah satu jalan untuk mendapatkan pemecahan masalah secara lebih cepat dan mudah. 
	Sedangkan definisi lain dari Sistem Pakar adalah sistem berbasis komputer yang menggunakan pengetahuan, fakta, dan teknik penalaran dalam memecahkan masalah yang biasanya hanya dapat dipecahkan oleh seorang pakar dalam bidang tersebut </p>
	<p>Sistem pakar dibuat pada wilayah pengetahuan tertentu untuk suatu kepakaran tertentu yang mendekati kemampuan manusia disalah satu bidang. Sistem pakar akan memberikan solusi yang memuaskan layaknya seorang pakar. 
	Selain itu sistem pakar juga dapat memberikan penjelasan terhadap langkah yang diambil dan memberikan alasan atas saran atau kesimpulan yang ditemukan  
	
	</p> 
	<p>&nbsp;</p>
