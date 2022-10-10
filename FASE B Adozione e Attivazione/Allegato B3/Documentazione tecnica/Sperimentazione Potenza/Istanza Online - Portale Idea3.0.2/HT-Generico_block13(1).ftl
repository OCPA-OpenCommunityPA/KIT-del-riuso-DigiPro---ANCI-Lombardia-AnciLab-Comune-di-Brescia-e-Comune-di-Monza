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
	
	<h2>Verifica amministrativa</h2>
	
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
	  
	
	  
	</div>  
	  
	<!--Fine consultazione documenti--> 
	
	  
	<br>  
	<!-- Controllo se far visualizzare l'opzione di fascicolazione  nel  fascicolo del procedimento scelto che talvolta puo coincidere con il fascicolo del documento ricevuto -->
	
	<#if gestione_fascicolo=="nuovo">
	<#if UO_smistamento==""  && fascicolato=="no">
	  
	<hr>
	  
	<div class='row'>
	<h5><strong>Documenti protocollati</strong></h5>  
	<!-- <#list ud as documento> -->
	<div class='panel'>
	  <p><strong>${documento.DOCNAME}</strong> <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${documento.DOCNUM}'><i class='glyphicon glyphicon-download'></i> Scarica</a>     <br>       <span class='small'>Tipologia: ${documento.TYPE_ID}  
	<!--<#if documento.NUM_PG?has_content>-->
	Numero protocollo: ${documento.NUM_PG} - Anno protocollo: ${documento.ANNO_PG}
	<!--</#if>--></span></p>
	</div>
	 <!-- </#list> -->
	</div>
	  
	<hr>
	<div class='row'>
	<div class="col-sm-4">
	<label>Si desidera fascicolare i documenti ricevuti? </label>     
	</div>    
	  <div class="col-sm-4">
	    <p> <input type="radio" name="scelta_fascicolare" id="inlineRadio1" value="si" > Si, accetta e fascicola</p>
		  <p> <input type="radio" name="scelta_fascicolare" id="inlineRadio2" value="no" checked > No </p>
	  </div>
	</div>
	
	
	</#if>
	</#if>
	
	<hr>
	
	
	<div class='row' id="esito_verifica">
	  
	  <fieldset class="well the-fieldset" style="background:none">
	    <legend class="the-legend">Esito verifica amministrativa dei documenti</legend>
		<#if azioni_verifica_documenti.positivo=="si">
		<p> <input type="radio" name="esito_verifica"  value="positivo" > Procedi con la pratica </p>
		</#if>
		<#if azioni_verifica_documenti.negativoIntegrazioni=="si">
		<p> <input type="radio" name="esito_verifica"  value="negativoIntegrazioni" > Richiedi integrazioni </p>
		</#if>
		<#if azioni_verifica_documenti.negativoMotiviOstativi=="si">
		<p> <input type="radio" name="esito_verifica"  value="negativoMotiviOstativi" > Esito negativo, procedi con la comunicazione di motivi ostativi </p>
		</#if>
		<#if azioni_verifica_documenti.negativoIrricevibilita=="si">
		<p> <input type="radio" name="esito_verifica"  value="negativoIrricevibilita" > Esito negativo, procedi con la comunicazione di irricevibilita' </p>
		</#if>
		<#if azioni_verifica_documenti.concludiProcedimento=="si">
		<p> <input type="radio" name="esito_verifica"  value="concludiProcedimento" > Completa la pratica con notifica di completamento al cittadino</p>
		</#if>
		<#if azioni_verifica_documenti.approvatoConRiserva=="si">
		<p> <input type="radio" name="esito_verifica"  value="approvatoConRiserva" > Completa la pratica con riserva</p>
		</#if>
	  </fieldset> 
	</div>
	
	
	  
	  
	<!--******************************************--> 
	  
	  

	<hr>
	

	
	<!-- <#if richiesta_pareri == "scelta"> -->
	<div class='row' id="div_richiesta_pareri">
	  
	  <fieldset class="well the-fieldset" style="background:none">
	    <legend class="the-legend">Scelta pareri</legend>
	   <p>  
	    <select id="richiesta_pareri" name="richiesta_pareri" style="width: 190px;">
	    <!--  <option value="">Seleziona pareri</option> -->
			<option value="no">Non richiedere pareri</option>
		<option value="enti_interni">Pareri enti interni</option>
		<option value="enti_esterni">Pareri enti esterni</option>
		<option value="enti_esterni_e_interni">Pareri interni e pareri esterni</option>
	
	    </select>
	  </p>
	    </fieldset>
	</div>
	<!-- </#if> -->
	
	
	<br>

	
	
	<div class="row" id="uo_richiesta_pareri" style="display:none;">
		<!-- <#if destinatari_pareri_interni?has_content> -->
		<!-- <#list destinatari_pareri_interni as destinatario> -->
		<div class="checkbox">
		   <label><input type="checkbox" class="uo_pareri" name="uo_pareri_interni" value="${destinatario.id}">${destinatario.descrizione} <small>codice: ${destinatario.id}</small></label>
		</div>
		<!-- </#list> -->
		<!-- </#if> -->
		<input type="text" id="uo_pareri_selezionate" name="uo_pareri_selezionate" style="display:none;">
	   </div>
	
	<div class='row' id="motivo" style="display:none;" >
	<hr>
	<div class="alert alert-info">NOTA: Inserire motivi per l' irricevibilita'!</div>
	  <label class='col-3'>Motivi irricevibilita'</label> 
	    <span class='col-9'> <textarea name='motivo_irrecivibilita' class='form-control input-small' id='motivo_irrecivibilita'></textarea></span>
	    
	</div>
	<br>
	

	<div id="warning" class="bs-example" style="display:none;">
	   <div class="alert alert-danger">
		 <strong>Attenzione!</strong> <label id="warningLabel"></label>
	   </div>
	</div>
	
	<br>
	<button class='btn btn-small btn-primary' type='button' onclick="validazione()" name='outcome' value='Complete'>Completa attivita'</button>
	
	</form>
	</div>
	
	<script>
	$("#div_richiesta_pareri").hide();
var uo_pareri_selezionate = $('#uo_pareri_selezionate');


$("input[type=radio]").change(function() {
    if ($(this).prop('name') == 'esito_verifica') {
        if ($(this).prop('value') == 'negativoIrricevibilita') {
            $("#motivo").show();
            $("#div_richiesta_pareri").hide();
        } else if ($(this).prop('value') == 'positivo') {

            $("#motivo").hide();
            $("#div_richiesta_pareri").show();
        } else {

            $("#motivo").hide();
            $("#div_richiesta_pareri").hide();
        }

    }

});

$("select[name=richiesta_pareri").change(function() {


    if ($('select[name=richiesta_pareri] option').filter(':selected').val() == 'enti_interni' || $('select[name=richiesta_pareri] option').filter(':selected').val() == 'enti_esterni_e_interni') {
        $("#uo_richiesta_pareri").show();
    } else {
        $("#uo_richiesta_pareri").hide();
    }

});

$("#uo_richiesta_pareri input[type=checkbox]").change(function() {
    if ($(this).hasClass('uo_pareri')) {
        //se e' stato selezionato allora scrivi il valore dentro l'input nascosto
        //altrimenti se e' stato deselezionato elimina il valore dall'input
        if ($(this).prop("checked")) {
            //inserisci valore          
            uo_pareri_selezionate.val(uo_pareri_selezionate.val() + ',' + $(this).prop("value"));
        } else {
            //elimina valore
            var str = uo_pareri_selezionate.val();
            str = str.replace(',' + $(this).prop("value"), "");
            //alert(str);
            uo_pareri_selezionate.val(str);

        }
    }
});



function validazione() {

    var esito_verifica = $("#esito_verifica input[type='radio']:checked").val();
    if (esito_verifica == undefined || esito_verifica == null || esito_verifica == "") {
        document.getElementById("warningLabel").innerHTML = "E' necessario selezionare un valore per l'esito della verifica!";
        document.getElementById("warning").style.display = "block";
        return;
    }

    if (document.getElementById("richiesta_pareri") != null) {

        if (document.getElementById("richiesta_pareri").value == "") {
            document.getElementById("warningLabel").innerHTML = "E' necessario selezionare un valore per richiesta pareri!";
            document.getElementById("warning").style.display = "block";
            return;
        } else if (document.getElementById("richiesta_pareri").value == "enti_interni") {
            if (uo_pareri_selezionate == "") {
                document.getElementById("warningLabel").innerHTML = "E' necessario selezionare almeno un ente per la richiesta pareri!";
                document.getElementById("warning").style.display = "block";
                return;
            }
        }

    }


    document.getElementById("warning").style.display = "none";
    document.getElementById("verifica_amministrativa").submit();

}
	
	</script>