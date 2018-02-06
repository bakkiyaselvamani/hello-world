<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
/*
var form = $('form#test-form'),
    url = 'https://script.google.com/macros/s/AKfycbxtXWtQUK0zokW1MhazZ3hN0I_QIqft1RdOUKJSj1Gn3euwoZ8/exec'

$('#submit-form').on('click', function(e) {
  e.preventDefault();
  var jqxhr = $.ajax({
    url: url,
    method: "GET",
    dataType: "json",
    data: form.serializeObject()
  }).success(
    // do something
  );
})
*/
function add()
{
	alert('hi');


	return false;
}
var form = $('#test-form');
var url = 'https://script.google.com/macros/s/AKfycbxtXWtQUK0zokW1MhazZ3hN0I_QIqft1RdOUKJSj1Gn3euwoZ8/exec';
//alert(form);
  $('#submit-form').on('click', function(e) {
  e.preventDefault();
  var jqxhr = $.ajax({
    url: url,
    method: "GET",
    dataType: "json",
    data: form.serializeObject()
  }).success(
    // do something
  );
</script>
</head>
<body>

	  <form id="test-form">
	  <div>
	    <label>Field 1</label>
	    <input type="text" name="form_field_1" placeholder="Field 1"/>
	  </div>

	  <div>
	    <label>Field 2</label>
	    <input type="text" name="form_field_2" placeholder="Field 2"/>
	  </div>
	  
	  <div>
	    <label>Field 3</label>
	    <input type="text" name="form_field_3" placeholder="Field 3"/>
	  </div>
	  
	  <div>
	    <label>Field 4</label>
	    <input type="text" name="form_field_4" placeholder="Field 4"/>
	  </div>

	  <div>
	    <button type="submit"id="submit-form">Submit</button>
	  </div>

	</form>
</body>
</html>