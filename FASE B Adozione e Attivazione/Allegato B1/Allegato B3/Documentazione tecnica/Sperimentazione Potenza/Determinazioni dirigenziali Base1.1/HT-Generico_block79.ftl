<form action='complete' method='POST' enctype='multipart/form-data'  id="formInvio" class='ad-search form-horizontal'>
<h2>Gestione controllo del responsabile</h2>
<hr>

<div class='container'>
<hr>
	<label class='col-3'>Risulta necessario un controllo del responsabile sulla determina?</label> 		
		<span class='col-9'>
                <br> 
		<input type="radio" name="controllo_responsabile" id="inlineRadio1" value="si" checked>Si
		<br>
                <input type="radio" name="controllo_responsabile" id="inlineRadio2" value="no">No
		</span>
</div>

<br>
<button class='btn btn-small btn-primary' name='outcome' value='Complete' onclick="validazione()" type="button" >Completa attivita'</button>
</form>

<script>
	function validazione() {
$( "form[action='complete']" ).addClass('loading');
	 document.getElementById("formInvio").submit();
	}
</script>