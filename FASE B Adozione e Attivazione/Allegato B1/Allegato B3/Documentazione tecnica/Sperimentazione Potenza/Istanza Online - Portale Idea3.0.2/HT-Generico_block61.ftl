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

<h2>Verifica amministrativa - controllo completo dei documenti</h2>

<hr>	

	

<!--Consultazione documenti ricevuti-->
<div class="row">

<fieldset class="well the-fieldset" style="background:none">
    <legend class="the-legend">Pratica ricevuta dal cittadino</legend>
	
	<h5><strong>Documento</strong></h5>
<div class='panel'>
  <p><strong>${documentoProtocollato.DOCNAME}
	  </strong>   <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documentoProtocollato.DOCNUM}'>
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
	<a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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
	  <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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
	  </strong>   <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${doc_comunicazioneAvvio.DOCNUM}'>
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
	<a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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
	  <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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
	  </strong>   <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${doc_richiestaIntegrazioni.DOCNUM}'>
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
	<a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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
	  <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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
	  </strong>   <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${doc_richiestaIntegrazioniRicevuto.DOCNUM}'>
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
	<a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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
	  <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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
	  </strong>   <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${doc_motiviOstativi.DOCNUM}'>
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
	<a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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
	  <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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
	  </strong>   <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${doc_motiviOstativiRicevuto.DOCNUM}'>
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
	<a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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
	  <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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
	
	

<!-- <#if doc_pareri_interniProtocollato.DOCNUM?has_content> -->	
<fieldset class="well the-fieldset" style="background:none">
    <legend class="the-legend">Documento pareri interni</legend>
	<h5><strong>Documento</strong></h5>
<div class='panel'>
  <p><strong>${doc_pareri_interniProtocollato.DOCNAME}
	  </strong>   <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${doc_pareri_interniProtocollato.DOCNUM}'>
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
	<a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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
	  <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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

      
   <!-- <#if listaPareriInterniRicevuti?has_content> -->
                  <!-- <#list listaPareriInterniRicevuti as parereintRic> -->

                  <!-- <#if parereintRic.documento_principale.DOCNUM?has_content> -->
                  <fieldset class="well the-fieldset" style="background:none">
                        <legend class="the-legend">Documento pareri interni ricevuto da ${parereintRic.descrizione_uo}</legend>
                        <h5><strong>Documento</strong></h5>
                        <div class='panel'>
                              <p><strong>${parereintRic.documento_principale.DOCNAME}
                                    </strong> <a class='btn btn-primary pull-right'
                                          href='/AppDoc/downloadDoc?docNum=${parereintRic.documento_principale.DOCNUM}'>
                                          <i class='glyphicon glyphicon-download'></i> Scarica</a><br>
                                    <span class='small'>Tipologia: ${parereintRic.documento_principale.TYPE_ID}
                                          <!--<#if parereintRic.documento_principale.NUM_PG?has_content>-->
                                          Numero protocollo: ${parereintRic.documento_principale.NUM_PG} - Anno protocollo:
                                          ${parereintRic.documento_principale.ANNO_PG}
                                          <!--</#if>-->
                                    </span> </p>
                        </div>

                        <!-- <#if parereintRic.lista_allegati?has_content> -->
                        <hr class='clearfix'>
                        <h5><strong>Allegati</strong></h5>

                        <!-- <#list parereintRic.lista_allegati as documento> -->
                        <div class='panel' id="${documento.DOCNUM}">
                              <p><strong>${documento.DOCNAME}</strong>
                                    <a class='btn btn-primary pull-right'
                                          href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
                                          <i class='glyphicon glyphicon-download'></i> Scarica</a>
                                    <br> <span class='small'>Tipologia: ${documento.TYPE_ID}
                                          <!--<#if documento.NUM_PG?has_content>-->
                                          Numero protocollo: ${documento.NUM_PG} - Anno protocollo: ${documento.ANNO_PG}
                                          <!--</#if>--></span></p>
                        </div>
                        <!-- </#list> -->
                        <!-- </#if> -->

                  </fieldset>

                  <!--</#if>-->
                  <!-- </#list> --> 
                  <!--</#if>-->




	

<!-- <#if doc_pareri_esterni.DOCNUM?has_content> -->	
<fieldset class="well the-fieldset" style="background:none">
    <legend class="the-legend">Documento pareri esterni</legend>
	<h5><strong>Documento</strong></h5>
<div class='panel'>
  <p><strong>${doc_pareri_esterni.DOCNAME}
	  </strong>   <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${doc_pareri_esterni.DOCNUM}'>
	  <i class='glyphicon glyphicon-download'></i> Scarica</a><br>      
	  <span class='small'>Tipologia: ${doc_pareri_esterni.TYPE_ID} 
	  <!--<#if doc_pareri_esterni.NUM_PG?has_content>-->
Numero protocollo: ${doc_pareri_esterni.NUM_PG} - Anno protocollo: ${doc_pareri_esterni.ANNO_PG}
<!--</#if>--></span>    </p>
</div>
<!-- <#if allegatiPareriEsterni?has_content> -->
<hr class='clearfix'>
<h5><strong>Allegati</strong></h5>
    
<!-- <#list allegatiPareriEsterni as documento> -->    
	<div class='panel' id="${documento.DOCNUM}">
  	<p><strong>${documento.DOCNAME}</strong> 
	<a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
	<i class='glyphicon glyphicon-download'></i> Scarica</a>    
<br> <span class='small'>Tipologia: ${documento.TYPE_ID} 
<!--<#if documento.NUM_PG?has_content>-->
Numero protocollo: ${documento.NUM_PG} - Anno protocollo: ${documento.ANNO_PG}
<!--</#if>-->
		</span></p>
</div>
<!-- </#list> -->   

<!-- </#if> -->

	<!-- <#if annessiPareriEsterni?has_content> -->
<hr class='clearfix'>
<h5><strong>Annessi</strong></h5>
    
<!-- <#list annessiPareriEsterni as documento> -->
<div class='panel' id="${documento.DOCNUM}">
  <p><strong>
	  ${documento.DOCNAME}</strong>
	  <a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
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
	

	<!-- <#if listaUDPareriRicevuti?has_content> -->	
<fieldset class="well the-fieldset" style="background:none">
    <legend class="the-legend">Documenti pareri esterni ricevuti</legend>

<h5><strong>Documenti</strong></h5>
<!-- <#if listaUDPareriRicevuti?has_content> -->    
<!-- <#list listaUDPareriRicevuti as documento> -->    
	<div class='panel' id="${documento.DOCNUM}">
  	<p><strong>${documento.DOCNAME}</strong> 
	<a class='btn btn-primary pull-right' href='/AppDoc/downloadDoc?docNum=${documento.DOCNUM}'>
	<i class='glyphicon glyphicon-download'></i> Scarica</a>    
<br> <span class='small'>Tipologia: ${documento.TYPE_ID} 
		<!--<#if documento.NUM_PG?has_content>-->
Numero protocollo: ${documento.NUM_PG} - Anno protocollo: ${documento.ANNO_PG}
<!--</#if>--></span></p>
</div>
<!-- </#list> -->   
<!-- <#else> -->  
<p><em>Nessun documento ricevuto</em></p>
<!-- </#if> -->

</fieldset>	
	
<!--</#if>-->
	
	
	
</div>	
	
<!--Fine consultazione documenti-->
	
	
	

<br>
<br>

<div class='row'>
<div>
	<fieldset class="well the-fieldset" style="background:none">
    <legend class="the-legend">Esito verifica dei documenti</legend>
		<p><input type="radio" name="esito_finale"  value="positivo"  checked> Esito positivo </p>
		<p><input type="radio" name="esito_finale" value="negativo" > Esito negativo </p>
	</fieldset>

</div>
</div>

<br>
<br>



<div id="esito_finale_positivo" >

		<#if invio_documenti == "si" && provvedimento_finale == "no">

			<div class='row'>
				<fieldset class="well the-fieldset" style="background:none">
    			<legend class="the-legend">Documento da inviare a fine procedimento</legend>
				<div class="col-sm-4">
				<p> <input type="radio" name="azione_finale"  value="crea_doc" checked > Caricare documento nuovo </p>
				<p><input type="radio" name="azione_finale" value="recupera_doc"> Recuperare documento registrato </p>
				</div>	
			</fieldset>
			</div>

		</#if>


</div>

<br>
<br>


<button class='btn btn-small btn-primary'  type='submit'  name='outcome' value='Complete'>Completa attivita' </button>

</form>
</div>

<script>

	
$("input[type=radio]").change(function() {  
	if($(this).prop('name') == 'esito_finale'){
            if($(this).prop('value') == 'positivo'){
	        $("#esito_finale_positivo").show();
                }
            else
			{
          
	       $("#esito_finale_positivo").hide();
	      }
                
	}
        });
	
</script>