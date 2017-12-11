$(function() 
{
	$("#registerForm").validate({
		rules : {
			name : {
				required : true
			},
			email : {
				required : true,
				email : true
			},
			username : {
				required : true
			},
			password : {
				required : true,
				minlength : 3,
				maxlength : 10
			},
			phone : {
				required : true,
				minlength : 10,
				maxlength : 10
			},
			address : {
				required : true
			},
			country : {
				required : true
			}
		},
		messages : {
			name : {
				required : "Please enter your name"
			},
			email : {
				required : "Please enter your email",
				email : "Please enter valid email"
			},
			username : {
				required : "Please enter username"
			},
			password : {
				required : "Please enter password",
				minlength : "Your password must be between 3 and 10 characters",
				maxlength : "Your password must between 3 and 10 characters"
			},
			phone : {
				required : "Please enter the Phone No.",
				minlength : "Please enter valid 10 digit mobile number",
				maxlength : "Please enter valid 10 digit mobile number"
			},
			address : {
				required : "Please enter your address"
			},
			country : {
				required : "Please enter your country"
			}
		},
		submitHandler: function(form) {
			form.submit();
		}
	});
	
	
	
	
	
	
	$("#categoryForm").validate({
		rules : {
			catName : {
				required : true
			},
			catDesc : {
				required : true
			}
		},
		messages : {
			catName : {
				required : "Please enter category name"
			},
			catDesc : {
				required : "Please enter category description"
			}
		},
		submitHandler: function(form) {
			form.submit();
		}
	});
	
	$("#supForm").validate({
		rules : {
			supName : {
				required : true
			},
			supAddrs : {
				required : true
			},
			supEmail : {
				required : true,
				email : true
			}
		},
		messages : {
			supName : {
				required : "Please enter supplier name"
			},
			supAddrs : {
				required : "Please enter supplier address"
			},
			supEmail : {
				required : "Please enter supplier email",
				email : "Please enter valid email"
			}
		},
		submitHandler: function(form) {
			form.submit();
		}
	});
	
	$("#productForm").validate({
		rules : {
			productName : {
				required : true
			},
			price : {
				required : true,
				digits : true,
				min : 1
			},
			stock : {
				required : true,
				digits : true,
				min : 1
			},
			catId: {
				required: {
					depends: function(element) {
	                     return $('#catId').val() == 0;
	                 }
	              }
	        },
	        supplierId: {
				required: {
					depends: function(element) {
	                     return $('#supplierId').val() == 0;
	                 }
	              }
	        },
			productDesc : {
				required : true
			}
		},
		messages : {
			productName : {
				required : "Please enter product name"
			},
			price : {
				required : "Please enter product price",
				digits: "Please enter only digits",
				min: "Please enter valid product price"
			},
			stock : {
				required : "Please enter product stock",
				digits: "Please enter only digits",
				min: "Please enter valid product stock"
			},
			catId : {
				required : "Please choose a category"
			},
			supplierId : {
				required : "Please choose a supplier"
			},
			productDesc : {
				required : "Please enter product description"
			}
		},
		submitHandler: function(form) {
			form.submit();
		}
	});
	
});