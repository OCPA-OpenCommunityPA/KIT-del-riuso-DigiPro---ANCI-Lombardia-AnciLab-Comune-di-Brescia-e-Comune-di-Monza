<form action='complete' method='POST' enctype='multipart/form-data'  id="formInvio" class='ad-search form-horizontal'>
<h2>Gestione modifiche determina</h2>
<hr>
<!-- <#if note!=""> -->
<div class="alert alert-info">NOTA: ${note}</div>
<br>
<!-- </#if> -->
<br>
<div id="warning" class="bs-example" style="display:none;">
  <div class="alert alert-danger">
    <strong>Attenzione!</strong> <label id="warningLabel"></label>
  </div>
</div>
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
  <label class='col-3'>Come procedere con la determina?</label>     
    <span class='col-9'>
                <br> 
    <input type="radio" name="verifica_dirigente" id="inlineRadio1" value="proponente" checked>Invia al proponente per modifiche
    <br>
                <input type="radio" name="verifica_dirigente" id="inlineRadio2" value="dirigente">Modifico
                <br>
                <input type="radio" name="verifica_dirigente" id="inlineRadio3" value="annulla">Annulla atto
    </span>
</div>

<div id="note">
<div class='container'>
<hr>
  <label class='col-3'>Inserisci delle note per il proponente</label>     
    <span class='col-9'> 
    <input id="noteProponente" class="form-control input-small" type="text" name="note" value="${note}">
    </span>
</div>
</div>

<br>

<button class='btn btn-small btn-primary' name='outcome' value='Complete' onclick="validazione()" type="button" >Completa attivita'</button>
</form>

<script>
  $("input[type=radio]").change(function() {  
  if($(this).prop('name') == 'verifica_dirigente'){
            if($(this).prop('value') == 'proponente'){
                   $("#note").show();
                }
                else {
                   $("#note").hide();
                   document.getElementById("warning").style.display="none";
                }
  }
        });

  function validazione() {
    $( "form[action='complete']" ).addClass('loading');
    if(document.getElementById("inlineRadio1").checked == true)
    {
       var x=document.getElementById("noteProponente");
       if(x.value=="")
       {
          document.getElementById("warningLabel").innerHTML = "Inserire delle note per il proponente!";
          document.getElementById("warning").style.display="block";
          $( "form[action='complete']" ).removeClass('loading');
            return;
       }
    }
   document.getElementById("warning").style.display="none";
   document.getElementById("formInvio").submit();
  }
</script>