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
<form action='complete' method='POST' enctype='multipart/form-data'>

<h2>Verifica amministrativa - osservazioni documenti</h2>

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
	<!--  <#if documentoProtocollato.NUM_PG?has_content> -->
Numero protocollo: ${documentoProtocollato.NUM_PG} - Anno protocollo: ${documentoProtocollato.ANNO_PG}
<!--</#if> -->
	  </span>    </p>
</div>
<!-- <#if allegatiDocumentoProtocollato?has_content> -->	
<hr class='clearfix'>
<h5><strong>Allegati</strong></h5>
<!-- <#list allegatiDocumentoProtocollato as documento> -->    
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
<!-- <#if annessiDocumentoprotocollato?has_content> --> 
<hr class='clearfix'>
<h5><strong>Annessi</strong></h5> 
<!-- <#list annessiDocumentoprotocollato as documento> -->
<div class='panel' id="${documento.DOCNUM}">
  <p><strong>
	  ${documento.DOCNAME}</strong>
	  <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${documento.DOCNUM}'>
		  <i class='glyphicon glyphicon-download'></i> Scarica</a>      
	  <br> <span class='small'>Tipologia: ${documento.TYPE_ID}  
<!--<#if documento.NUM_PG?has_content>-->
Numero protocollo: ${documento.NUM_PG} - Anno protocollo: ${documento.ANNO_PG}
<!--</#if>--></span>  </p>
</div>
<!-- </#list> --> 
<!-- </#if> -->

</fieldset>
	
<!-- <#if comunicazione_avvio=="si"> -->
<fieldset class="well the-fieldset" style="background:none">
    <legend class="the-legend">Documento Comunicazione Avvio</legend>
	
	<h5><strong>Documento</strong></h5>
<div class='panel'>
  <p><strong>${doc_comunicazioneAvvio.DOCNAME}
	  </strong>   <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${doc_comunicazioneAvvio.DOCNUM}'>
	  <i class='glyphicon glyphicon-download'></i> Scarica</a><br>      
	  <span class='small'>Tipologia: ${doc_comunicazioneAvvio.TYPE_ID}  
	  <!--<#if doc_comunicazioneAvvio.NUM_PG?has_content>-->
Numero protocollo: ${doc_comunicazioneAvvio.NUM_PG} - Anno protocollo: ${doc_comunicazioneAvvio.ANNO_PG}
       <!--</#if>-->
	  </span>    </p>
</div>
<!-- <#if allegatiDocumentoAvvio?has_content> --> 	
<hr class='clearfix'>
<h5><strong>Allegati</strong></h5>
<!-- <#list allegatiDocumentoAvvio as documento> -->    
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
	
<!-- <#if annessiDocumentoAvvio?has_content> --> 
<hr class='clearfix'>
<h5><strong>Annessi</strong></h5>  
<!-- <#list annessiDocumentoAvvio as documento> -->
<div class='panel' id="${documento.DOCNUM}">
  <p><strong>
	  ${documento.DOCNAME}</strong>
	  <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${documento.DOCNUM}'>
		  <i class='glyphicon glyphicon-download'></i> Scarica</a>      
	  <br> <span class='small'>Tipologia: ${documento.TYPE_ID}  
<!--<#if documento.NUM_PG?has_content>-->
Numero protocollo: ${documento.NUM_PG} - Anno protocollo: ${documento.ANNO_PG}
<!--</#if>--></span>  </p>
</div>
<!-- </#list> --> 
<!-- </#if> -->

</fieldset>

<!--</#if>-->
	
<!-- <#if doc_richiestaIntegrazioni.DOCNUM?has_content> -->
<fieldset class="well the-fieldset" style="background:none">
    <legend class="the-legend">Documento richiesta integrazioni</legend>
	
	<h5><strong>Documento</strong></h5>
<div class='panel'>
  <p><strong>${doc_richiestaIntegrazioni.DOCNAME}
	  </strong>   <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${doc_richiestaIntegrazioni.DOCNUM}'>
	  <i class='glyphicon glyphicon-download'></i> Scarica</a><br>      
	  <span class='small'>Tipologia: ${doc_richiestaIntegrazioni.TYPE_ID}  
	  
	  <!--<#if doc_richiestaIntegrazioni.NUM_PG?has_content>-->
Numero protocollo: ${doc_richiestaIntegrazioni.NUM_PG} - Anno protocollo: ${doc_richiestaIntegrazioni.ANNO_PG}
       <!--</#if>-->
	  
	  </span>    </p>
</div>
<!-- <#if allegatiRichiestaIntegrazioni?has_content> --> 
	<hr class='clearfix'>
<h5><strong>Allegati</strong></h5>
   
<!-- <#list allegatiRichiestaIntegrazioni as documento> -->    
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

<!-- <#if annessiRichiestaIntegrazioni?has_content> --> 
<hr class='clearfix'>
<h5><strong>Annessi</strong></h5>
   
<!-- <#list annessiRichiestaIntegrazioni as documento> -->
<div class='panel' id="${documento.DOCNUM}">
  <p><strong>
	  ${documento.DOCNAME}</strong>
	  <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${documento.DOCNUM}'>
		  <i class='glyphicon glyphicon-download'></i> Scarica</a>      
	  <br> <span class='small'>Tipologia: ${documento.TYPE_ID}  
<!--<#if documento.NUM_PG?has_content>-->
Numero protocollo: ${documento.NUM_PG} - Anno protocollo: ${documento.ANNO_PG}
<!--</#if>--></span>  </p>
</div>
<!-- </#list> --> 

<!-- </#if> -->

</fieldset>

<!--</#if>-->
	
	
<!-- <#if doc_richiestaIntegrazioniRicevuto.DOCNUM?has_content> -->
<fieldset class="well the-fieldset" style="background:none">
    <legend class="the-legend">Documento integrazioni ricevuto</legend>
	
	<h5><strong>Documento principale</strong></h5>
<div class='panel'>
  <p><strong>${doc_richiestaIntegrazioniRicevuto.DOCNAME}
	  </strong>   <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${doc_richiestaIntegrazioniRicevuto.DOCNUM}'>
	  <i class='glyphicon glyphicon-download'></i> Scarica</a><br>      
	  <span class='small'>Tipologia: ${doc_richiestaIntegrazioniRicevuto.TYPE_ID}  
	  <!--<#if doc_richiestaIntegrazioniRicevuto.NUM_PG?has_content>-->
Numero protocollo: ${doc_richiestaIntegrazioniRicevuto.NUM_PG} - Anno protocollo: ${doc_richiestaIntegrazioniRicevuto.ANNO_PG}
       <!--</#if>-->
	  
	  
	  </span>    </p>
</div>
<!-- <#if allegatiIntegrazioniRicevuto?has_content> --> 
	<hr class='clearfix'>
<h5><strong>Allegati</strong></h5>
   
<!-- <#list allegatiIntegrazioniRicevuto as documento> -->    
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

<!-- <#if annessiIntegrazioniRicevuto?has_content> --> 
<hr class='clearfix'>
<h5><strong>Annessi</strong></h5>
   
<!-- <#list annessiIntegrazioniRicevuto as documento> -->
<div class='panel' id="${documento.DOCNUM}">
  <p><strong>
	  ${documento.DOCNAME}</strong>
	  <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${documento.DOCNUM}'>
		  <i class='glyphicon glyphicon-download'></i> Scarica</a>      
	  <br> <span class='small'>Tipologia: ${documento.TYPE_ID}  
<!--<#if documento.NUM_PG?has_content>-->
Numero protocollo: ${documento.NUM_PG} - Anno protocollo: ${documento.ANNO_PG}
<!--</#if>--></span>  </p>
</div>
<!-- </#list> --> 

<!-- </#if> -->

</fieldset>

<!--</#if>-->
	


<!-- <#if doc_motiviOstativi.DOCNUM?has_content> -->
<fieldset class="well the-fieldset" style="background:none">
    <legend class="the-legend">Documento Motivi Ostativi</legend>
	<h5><strong>Documento principale</strong></h5>
<div class='panel'>
  <p><strong>${doc_motiviOstativi.DOCNAME}
	  </strong>   <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${doc_motiviOstativi.DOCNUM}'>
	  <i class='glyphicon glyphicon-download'></i> Scarica</a><br>      
	  <span class='small'>Tipologia: ${doc_motiviOstativi.TYPE_ID} 
	  <!--<#if doc_motiviOstativi.NUM_PG?has_content>-->
Numero protocollo: ${doc_motiviOstativi.NUM_PG} - Anno protocollo: ${doc_motiviOstativi.ANNO_PG}
<!--</#if>-->
	  </span>    </p>
</div>

<!-- <#if allegatiMotiviOstativi?has_content> -->
<hr class='clearfix'>
<h5><strong>Allegati</strong></h5>
    
<!-- <#list allegatiMotiviOstativi as documento> -->    
	<div class='panel' id="${documento.DOCNUM}">
  	<p><strong>${documento.DOCNAME}</strong> 
	<a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${documento.DOCNUM}'>
	<i class='glyphicon glyphicon-download'></i> Scarica</a>    
<br> <span class='small'>Tipologia: ${documento.TYPE_ID}  
		<!--<#if documento.NUM_PG?has_content>-->
Numero protocollo: ${documento.NUM_PG} - Anno protocollo: ${documento.ANNO_PG}
<!--</#if>-->
		
		</span></p>
</div>
<!-- </#list> -->   
<!-- </#if> -->

<!-- <#if annessiMotiviOstativi?has_content> --> 
<hr class='clearfix'>
<h5><strong>Annessi</strong></h5>
   
<!-- <#list annessiMotiviOstativi as documento> -->
<div class='panel' id="${documento.DOCNUM}">
  <p><strong>
	  ${documento.DOCNAME}</strong>
	  <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${documento.DOCNUM}'>
		  <i class='glyphicon glyphicon-download'></i> Scarica</a>      
	  <br> <span class='small'>Tipologia: ${documento.TYPE_ID}  
		<!--<#if documento.NUM_PG?has_content>-->
Numero protocollo: ${documento.NUM_PG} - Anno protocollo: ${documento.ANNO_PG}
<!--</#if>--></span>  </p>
</div>
<!-- </#list> --> 
<!--</#if>-->  
</fieldset>
<!--</#if>-->

	
<!-- <#if doc_motiviOstativiRicevuto.DOCNUM?has_content> -->	
<fieldset class="well the-fieldset" style="background:none">
    <legend class="the-legend">Documento Motivi Ostativi Ricevuti</legend>
	<h5><strong>Documento</strong></h5>
<div class='panel'>
  <p><strong>${doc_motiviOstativiRicevuto.DOCNAME}
	  </strong>   <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${doc_motiviOstativiRicevuto.DOCNUM}'>
	  <i class='glyphicon glyphicon-download'></i> Scarica</a><br>      
	  <span class='small'>Tipologia: ${doc_motiviOstativiRicevuto.TYPE_ID}
	  Tipologia: ${doc_motiviOstativiRicevuto.TYPE_ID}   
		<!--<#if doc_motiviOstativiRicevuto.NUM_PG?has_content>-->
Numero protocollo: ${doc_motiviOstativiRicevuto.NUM_PG} - Anno protocollo: ${doc_motiviOstativiRicevuto.ANNO_PG}
<!--</#if>-->
	  </span>    </p>
</div>
<!-- <#if allegatiMotiviOstativiRicevuto?has_content> -->
<hr class='clearfix'>
<h5><strong>Allegati</strong></h5>
<!-- <#list allegatiMotiviOstativiRicevuto as documento> -->    
	<div class='panel' id="${documento.DOCNUM}">
  	<p><strong>${documento.DOCNAME}</strong> 
	<a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${documento.DOCNUM}'>
	<i class='glyphicon glyphicon-download'></i> Scarica</a>    
<br> <span class='small'>Tipologia: ${documento.TYPE_ID}
		<!--<#if documento.NUM_PG?has_content>-->
Numero protocollo: ${documento.NUM_PG} - Anno protocollo: ${documento.ANNO_PG}
<!--</#if>-->
		
		</span></p>
</div>
<!-- </#list> -->   
<!-- </#if> -->

<!-- <#if annessiMotiviOstativiRicevuto?has_content> --> 
<hr class='clearfix'>
<h5><strong>Annessi</strong></h5>
<!-- <#list annessiMotiviOstativiRicevuto as documento> -->
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
	

<br>
<hr>
	
<div class='row'>
	
	<fieldset class="well the-fieldset" style="background:none">
    <legend class="the-legend">Esito verifica documenti</legend>
	
	<div class="col-sm-4">
		<p> 
			<input type="radio" name="esito_verifica_osservazioni"  value="si" checked > Positivo
		</p>
		<p>
                <input type="radio" name="esito_verifica_osservazioni" value="no"> Negativo, procedi con la conclusione del procedimento
		</p>
	</div>
	</fieldset>
</div>

<br>
<br>

<button class='btn btn-small btn-primary'  type='submit' name='outcome' value='Complete'>Completa attivita'</button>
</form>
</div>