<style>
.the-legend {
     font-size: 1.2em !important;
        font-weight: bold !important;
        text-align: left !important;
        width:auto;
        padding:0 10px;
        border-bottom:none;
}
.the-fieldset {
    border: 1px groove #ddd !important;
    padding: 0 1.4em 1.4em 1.4em !important;
    margin: 0 0 1.5em 0 !important;
    -webkit-box-shadow:  0px 0px 0px 0px #000;
            box-shadow:  0px 0px 0px 0px #000;
}

</style>

<div class="container">

<form action='complete' id="verifica_amministrativa" method='POST' enctype='multipart/form-data'>

<h2>Verifica documenti e inserimento esito pratica</h2>

<hr>  
<!--Consultazione documenti ricevuti-->
<div class="row">
<fieldset class="well the-fieldset" style="background:none">
    <legend class="the-legend">Pratica ricevuta dal cittadino</legend>
  <h5><strong>Documento</strong></h5>
<div class='panel'>
  <p><strong>${documentoProtocollato.DOCNAME}
    </strong>   <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${documentoProtocollato.DOCNUM}'>
    <i class='glyphicon glyphicon-download'></i> Scarica</a><br>      
    <span class='small'>Tipologia: ${documentoProtocollato.TYPE_ID}
    </span></p>
</div>
<!-- <#if allegatiDocumentoProtocollato?has_content> -->  
<hr class='clearfix'>
<h5><strong>Allegati</strong></h5>
<!-- <#list allegatiDocumentoProtocollato as documento> -->    
  <div class='panel' id="${documento.DOCNUM}">
    <p><strong>${documento.DOCNAME}</strong> 
  <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${documento.DOCNUM}'>
  <i class='glyphicon glyphicon-download'></i> Scarica</a>    
<br> <span class='small'>Tipologia: ${documento.TYPE_ID}</span></p>
</div>
<!-- </#list> -->   
<!-- </#if> -->
<!-- <#if annessiDocumentoprotocollato?has_content> --> 
<hr class='clearfix'>
<h5><strong>Annessi</strong></h5> 
<!-- <#list annessiDocumentoprotocollato as documento> -->
<div class='panel' id="${documento.DOCNUM}">
  <p><strong>
    ${documento.DOCNAME}</strong>
    <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${documento.DOCNUM}'>
      <i class='glyphicon glyphicon-download'></i> Scarica</a>      
    <br> <span class='small'>Tipologia: ${documento.TYPE_ID}</span>  </p>
</div>
<!-- </#list> --> 
<!-- </#if> -->
</fieldset>
</div>  
<!--Fine consultazione documenti--> 
  
<br>  
<hr>
<div class='row'>  
  <fieldset class="well the-fieldset" style="background:none">
    <legend class="the-legend">Inserimento esito pratica</legend>
    <input type="hidden" id="recupera_documenti_istruttoria_semplice" value="${recupera_documenti_istruttoria_semplice}">
      <p> <input type="radio" name="esito_verifica" value="positivo"> Esito positivo </p>   
      <p> <input type="radio" name="esito_verifica" value="negativo" > Esito negativo </p>     
  </fieldset> 
</div>
<div class='row' id="upload">  
  <fieldset class="well the-fieldset" style="background:none">
    <legend class="the-legend">Crea unita' documentaria</legend>
   <!-- <#if tipologie.PRINCIPALE??> -->
              <multi-upload>
                  <div class="mu-record" mu-label="Documento principale" mu-add-button="false" mu-prefix="PRINCIPALE" mu-name="filePath" mu-required="true"> </div>
              </multi-upload>
              <!-- <#else> -->
              <!--</#if>-->
              <!--<#if tipologie.ALLEGATO??>-->
              <multi-upload add-button="true" mu-label="Documento principale" name-prefix="ALLEGATO" name-field="filePath" label-prefix="" label="Allegati"></multi-upload>
              <!-- <#else> -->
              <!--</#if> -->        
  </fieldset> 
</div>
<hr>
<div id="warning" class="bs-example" style="display:none;">
   <div class="alert alert-danger">
       <strong>Attenzione!</strong> <label id="warningLabel"></label>
   </div>
</div>

<button class='btn btn-small btn-primary' type='button' onclick="validazione()" name='outcome' value='Complete'>Completa attivita'</button>

</form>
</div>

<script> var tipologieallegato = new Array();var tipologieprincipale = new Array();var tipologieannotazione = new Array();var tipologieannesso = new Array();var map = new Object();<#if tipologie.PRINCIPALE??><#list tipologie.PRINCIPALE as tipologia>  tipologieprincipale[${tipologia_index}] = '${tipologia}';map['PRINCIPALE']=tipologieprincipale; </#list><#else></#if><#if tipologie.ALLEGATO??><#list tipologie.ALLEGATO as tipologia>  tipologieallegato[${tipologia_index}] = '${tipologia}';map['ALLEGATO']=tipologieallegato;</#list><#else></#if>$(function(){ $(document).on('ff-multi-upload-add ff-multi-upload-init', function(event, data){  var selectName = data.record.name.replace('.filePath','');selectName = selectName+'.TYPE_ID'; var elemAdded = $(event.target).find('.mu-input-row').last(); var label = $('<label>').text('Tipologia');$(label).attr({    'for': selectName});var s = $('<select />');  s.attr('name', selectName);  s.attr('class', 'table-cell input-small');for(var i=0; i<map[data.record.firstName].length; i++){ var option = $('<option>').val(map[data.record.firstName][i]).text(map[data.record.firstName][i]);$(s).append(option);}  $(elemAdded).html(label);  $(elemAdded).append(s);  });  });  
 

$("#upload").hide();

$("input[type=radio][name='esito_verifica']").change(function() {  
  if($(this).prop('value') == 'negativo')
          {
          $("#upload").show();
          }
          else
          {
            if($("#recupera_documenti_istruttoria_semplice").prop('value') == 'si'){
              $("#upload").hide();
            }else{
              $("#upload").show();
            }
          }
});

function validazione(){
document.getElementById("warning").style.display="none";
  if ($('input[name="esito_verifica"]:checked').length) {
    if($('input[name="esito_verifica"]:checked').prop('value')=="positivo" && $("#recupera_documenti_istruttoria_semplice").prop('value') == 'si'){
      //non fai nulla
    }else{
      if( !(document.getElementsByClassName("mu-input mu-input-hidden")[0]=== undefined) )
        {
          if (! (document.getElementsByClassName("mu-input mu-input-hidden")[0].name=="PRINCIPALE.filePath") )
           {
             document.getElementById("warningLabel").innerHTML = "Inserire un documento principale!";
             document.getElementById("warning").style.display="block";
             return;
           }
        }
        else
        {
          document.getElementById("warningLabel").innerHTML = "Inserire un documento principale!";
          document.getElementById("warning").style.display="block";
          return;
        }

        //controllo se un dato file e' stato selezionato, ma non caricato
        var size=document.getElementsByClassName("form-control file-caption kv-fileinput-caption").length;
        if(size!=0){
         document.getElementById("warningLabel").innerHTML = "Un file deve essere ancora caricato!";
                 document.getElementById("warning").style.display="block"; 
                 return;    
        }
    }
        
  }else{
    document.getElementById("warningLabel").innerHTML = "Selezionare un esito!";
    document.getElementById("warning").style.display="block";
    return;
  }

document.getElementById("verifica_amministrativa").submit();
}


</script>