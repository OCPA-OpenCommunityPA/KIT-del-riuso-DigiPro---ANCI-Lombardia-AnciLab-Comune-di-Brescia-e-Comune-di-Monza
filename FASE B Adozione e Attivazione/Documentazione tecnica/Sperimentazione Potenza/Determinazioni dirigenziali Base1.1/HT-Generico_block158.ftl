<form action='complete' method='POST' enctype='multipart/form-data' class='ad-search form-horizontal'>
<h2>Modifica gruppi non esistenti</h2>
<hr>
<br>

<h5><strong>Determina</strong></h5>
<div class='panel'>
 <p><strong><a href='/AppDoc/viewProfile?docNum=${doc_determina.DOCNUM}'>${doc_determina.DOCNAME}</a></strong>   
<a docnum="${doc_determina.DOCNUM}" docname="${doc_determina.DOCNAME}" class='btn btn-primary pull-right changeLink' href='/AppDoc/downloadDoc?docNum=${doc_determina.DOCNUM}'>
<i class='glyphicon glyphicon-download'></i> Scarica</a><br>      
<span class='small'>Tipologia: ${doc_determina.TYPE_ID}</span>    </p>

</div>
<br>

<div class='container'>
<hr>
  <label class='col-3'>Modifica codice gruppo proponente</label>     
    <span class='col-9'> 
    <input class="form-control input-small" type="text" name="figura_professionale" value="${figura_professionale}">
    </span>
</div>
<br>

<div class='container'>
<hr>
  <label class='col-3'>Modifica descrizione gruppo proponente</label>     
    <span class='col-9'> 
    <input class="form-control input-small" type="text" name="descrizione_ufficioCompetenza" value="${descrizione_ufficioCompetenza}">
    </span>
</div>
<br>

<button class='btn btn-small btn-primary' name='outcome' value='Complete' type="submit" >Completa attivita'</button>
</form>