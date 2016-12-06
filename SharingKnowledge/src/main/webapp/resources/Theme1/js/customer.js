/** ***************************** */
		/** *** search member **** */
		/** *************************** */
		$(document).on(
				'keyup',
				'#name0',
				function(e) {
					search();
					e.preventDefault();
				});
		
		function search() {
			var name1 = $('#name0').val();
			//alert(name1);
			$.ajax({
				type : 'POST',
				url : 'member/search',
				data : {
					name : name1,
					new1 : "222",
				}
			}).success(function(msg) {
				$("#tb2").html(msg);
				
			}).fail(function(msg) {
				alert('failed '+msg);
			});
			
		}