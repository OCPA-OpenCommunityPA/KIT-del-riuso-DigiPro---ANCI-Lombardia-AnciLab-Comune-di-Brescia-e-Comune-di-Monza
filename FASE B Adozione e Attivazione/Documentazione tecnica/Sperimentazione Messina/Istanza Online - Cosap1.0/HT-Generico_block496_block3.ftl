<style>
      .tooltiptext {
font-weight: bold;
color:#02918D;
}
      .table{
        width: 100% !important;
      }
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
<form action='complete' id="richiesta_pareri" method='POST' enctype='multipart/form-data' class="ad-search form-horizontal">
<h2>Richiesta parere - ${uo_proto_corrente.descrizione}</h2>
<hr>
<!-- <#if doc_pareri_interniProtocollato.DOCNUM?has_content> -->	
<fieldset class="well the-fieldset" style="background:none">
      <legend class="the-legend">Documento pareri interni</legend>
        <h5><strong>Documento</strong></h5>
  <div class='panel'>
    <p><strong>${doc_pareri_interniProtocollato.DOCNAME}
          </strong>   <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${doc_pareri_interniProtocollato.DOCNUM}'>
          <i class='glyphicon glyphicon-download'></i> Scarica</a><br>      
          <span class='small'>Tipologia: ${doc_pareri_interniProtocollato.TYPE_ID}  
          <!--<#if doc_pareri_interniProtocollato.NUM_PG?has_content>-->
  Numero protocollo: ${doc_pareri_interniProtocollato.NUM_PG} - Anno protocollo: ${doc_pareri_interniProtocollato.ANNO_PG}
  <!--</#if>-->
          </span>    </p>
  </div>
  
  <!-- <#if allegatiPareriInterni?has_content> -->
  <hr class='clearfix'>
  <h5><strong>Allegati</strong></h5>
  
  <!-- <#list allegatiPareriInterni as documento> -->    
        <div class='panel' id="${documento.DOCNUM}">
          <p><strong>${documento.DOCNAME}</strong> 
        <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${documento.DOCNUM}'>
        <i class='glyphicon glyphicon-download'></i> Scarica</a>    
  <br> <span class='small'>Tipologia: ${documento.TYPE_ID} 
              <!--<#if documento.NUM_PG?has_content>-->
  Numero protocollo: ${documento.NUM_PG} - Anno protocollo: ${documento.ANNO_PG}
  <!--</#if>--></span></p>
  </div>
  <!-- </#list> -->   
  <!-- </#if> -->
  
        <!-- <#if annessiPareriInterni?has_content> -->
  
  <hr class='clearfix'>
  <h5><strong>Annessi</strong></h5>
      <!-- <#list annessiPareriInterni as documento> -->
  <div class='panel' id="${documento.DOCNUM}">
    <p><strong>
          ${documento.DOCNAME}</strong>
          <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${documento.DOCNUM}'>
                <i class='glyphicon glyphicon-download'></i> Scarica</a>      
          <br> <span class='small'>Tipologia: ${documento.TYPE_ID}
          <!--<#if documento.NUM_PG?has_content>-->
  Numero protocollo: ${documento.NUM_PG} - Anno protocollo: ${documento.ANNO_PG}
  <!--</#if>-->
          </span>  </p>
  </div>
  <!-- </#list> --> 
  <!-- </#if> -->
  </fieldset>	
        
  <!--</#if>-->	
  
        
        
  </div>	
        
  <!--Fine consultazione documenti-->
<div class='row'>
<div class="col-md-12">
<fieldset class="well the-fieldset" style="background:none;">
<legend class="the-legend">Upload dei documenti</legend>
<div class="panel">
<p><strong>Nota: Caricare il documento dei pareri</strong></p>
<multi-upload>
      <div class="mu-record" mu-label="Documento principale" mu-add-button="false" mu-prefix="PARERIRICEVUTI" mu-name="filePath" mu-required="true">  </div>
   </multi-upload>
   <multi-upload add-button="true" mu-label="Documento principale" name-prefix="ALLEGATO" name-field="filePath" label-prefix="" label="Allegati"></multi-upload>
</div>
</fieldset>
</div>
</div>
<br>
<div id="warning" class="bs-example" style="display:none;">
   <div class="alert alert-danger">
      <strong>Attenzione!</strong> <label id="warningLabel"></label>
   </div>
</div>
<button class='btn btn-small btn-primary' type='button' onclick="validazione()" name='outcome' value='Complete'>Completa attivita'</button>
</form>
<script>


function validazione(){

$("#warning").css("display","none");

if( !(document.getElementsByClassName("mu-input mu-input-hidden")[0]=== undefined) )
{
if (! (document.getElementsByClassName("mu-input mu-input-hidden")[0].name=="PARERIRICEVUTI.filePath") )
{
$("#warningLabel").text("Inserire documento principale");
$("#warning").css("display","block");
return;
}
}
else
{
$("#warningLabel").text("Inserire un documento");
$("#warning").css("display","block");
return;
}

$("#richiesta_pareri").submit();
}


</script>