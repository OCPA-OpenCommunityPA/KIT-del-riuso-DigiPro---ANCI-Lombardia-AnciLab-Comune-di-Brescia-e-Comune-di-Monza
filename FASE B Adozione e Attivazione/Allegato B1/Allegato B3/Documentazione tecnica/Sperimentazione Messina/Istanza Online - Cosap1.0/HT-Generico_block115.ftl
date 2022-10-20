<form action='complete' id="form_gruppi" method='POST' enctype='multipart/form-data'>

<h2>Verifica formale dei documenti e definizione smistamento</h2>

<#if gestione_fascicolo=="nuovo">
<div class='container'>
<hr>
<h5><strong>Documenti protocollati</strong></h5>
	
<!-- <#list ud as documento> -->
<div class='panel'>
	<p><strong>${documento.DOCNAME}</strong> <a class='btn btn-primary pull-right' href='/AppBPM/bridge?TYPE=documento&action=download&DOCNUM=${documento.DOCNUM}'><i class='glyphicon glyphicon-download'></i> Scarica</a> 		<br>       <span class='small'>Tipologia: ${documento.TYPE_ID}</span></p>
</div>
 <!-- </#list> -->
	
</div>



<br/>
<br/>
<div class='container'>

<label class='col-3'>Si desidera fascicolare i documenti ricevuti? </label> 		
		<span class='col-9'> 
		<input type="radio" name="scelta_fascicolare" id="inlineRadio1" value="si" >si, accetta e fascicola
		<br>
                <input type="radio" name="scelta_fascicolare" id="inlineRadio2" value="no" checked >No
		</span>

</div>
</#if>

<br/>
<br/>

<div class='container'>

<label class='col-3'>Abilitazione smistamento</label> 		
		<span class='col-9'> 
		<input type="radio" name="smistamento" id="smistamentoInterno" value="interno" checked>Interno
		<br>
                <input type="radio" name="smistamento" id="smistamentoEsterno" value="esterno"  >Esterno
		</span>

</div>

<br/>
<br/>


<div class='container' id="visualizzaGruppi">

<label class='col-3'>Visualizza UO assegnate ai documenti</label> 		
		<span class='col-9'> 
		<input type="radio" name="visualizzaGruppi" id="visualizzaSi" value="si" >Si
		<br>
                <input type="radio" name="visualizzaGruppi" id="visualizzaNo" value="no" checked >no
		</span>

</div>


<div class='container'>

<label class='col-3'>Si desidera avere un'unica UO per tutte le operazioni sui documenti?</label> 


		
		<span class='col-9'> 
		<input type="radio" name="unicoGruppoPerDocumenti" id="unicoGruppoSi" value="si" >Si
		<br>
                <input type="radio" name="unicoGruppoPerDocumenti" id="unicoGruppoNo" value="no" checked >no
		</span>

</div>

 <hr>

<div class='container' id="UnicoGruppo" style="display:none;" >

<h4>Inserire le figure professionali per la redazione, firma, registrazione di tutti i documenti</h4>

	
		<label class='col-3'>UO Redazione documenti</label>
		<span class='col-9'> 
	   		<input id="redazioneAll" class="form-control input-small" type="text" name="redazioneAll" value="${UO_redazione}" >
		</span>

		<br/>
		<label class='col-3'>UO Firma documenti</label>
		<span class='col-9'> 
	   		<input id="firmaAll" class="form-control input-small" type="text" name="firmaAll" value="${UO_firma}" >
		</span>

		<br/>
		<label class='col-3'>UO Registrazione documenti</label>
		<span class='col-9'> 
	   		<input id="registraAll" class="form-control input-small" type="text" name="registraAll" value="${UO_registrazione}" >
		</span>


</div>



<br/>

<div class='container' id="gruppoSmistamentoEsterno" style="display:none;" >


<div class='container' id="noteSmistamento">
<hr>
<div class="alert alert-info">NOTA: Inserire note smistamento per invio documento all'utente!</div>
	<label class='col-3'>Note</label> 
   	<span class='col-9'> <textarea name='noteSmistamento' class='form-control input-small' id='noteSmistamento'></textarea></span>
		
</div>


	  <h4>Inserire le figure professionali per la gestione dello smistamento esterno</h4>
	
		<label class='col-3'>UO Redazione documento</label>
		<span class='col-9'> 
	   		<input id="redazioneSmistamentoEsterno" class="form-control input-small" type="text" name="UO_RedazioneSmistamentoExt" value="${UO_RedazioneSmistamentoExt}" >
		</span>
		<br/>
		<label class='col-3'>UO Firma documento</label>
		<span class='col-9'> 
	   		<input id="firmaSmistamentoEsterno" class="form-control input-small" type="text" name="UO_FirmaSmistamentoExt" value="${UO_FirmaSmistamentoExt}" >
		</span>
		<br/>
		<label class='col-3'>UO Registrazione documento</label>
		<span class='col-9'> 
	   		<input id="registraSmistamentoEsterno" class="form-control input-small" type="text" name="UO_RegistraSmistamentoExt" value="${UO_RegistraSmistamentoExt}" >
		</span>
</div>
<br/>




<div id="gruppoSmistamentoInterno" style="display:none;">

	
	<hr>
	<div class='container' >
	  <h4>Documento Motivi Ostativi</h4>
	
		<label class='col-3'>UO Redazione documento</label>
		<span class='col-9'> 
	   		<input id="redazioneMotiviOstativi" class="form-control input-small" type="text" name="UO_RedazioneMotiviOstativi" value="${UO_RedazioneMotiviOstativi}" >
		</span>
		<br/>
		<label class='col-3'>UO Firma documento</label>
		<span class='col-9'> 
	   		<input id="firmaMotiviOstativi" class="form-control input-small" type="text" name="UO_FirmaMotiviOstativi" value="${UO_FirmaMotiviOstativi}" >
		</span>
		<br/>
		<label class='col-3'>UO Registrazione documento</label>
		<span class='col-9'> 
	   		<input id="registraMotiviOstativi" class="form-control input-small" type="text" name="UO_RegistraMotiviOstativi" value="${UO_RegistraMotiviOstativi}" >
		</span>
	</div>
 	<br/>
	<hr>
	<div class='container' >
	  <h4>Documento comunicazione avvio</h4>
	
		<label class='col-3'>UO Redazione documento</label>
		<span class='col-9'> 
	   		<input id="redazioneComunicazioneAvvio" class="form-control input-small" type="text" name="UO_RedazioneComunicazioneAvvio" value="${UO_RedazioneComunicazioneAvvio}" >
		</span>
		<br/>
		<label class='col-3'>UO Firma documento</label>
		<span class='col-9'> 
	   		<input id="firmaComunicazioneAvvio" class="form-control input-small" type="text" name="UO_FirmaComunicazioneAvvio" value="${UO_FirmaComunicazioneAvvio}" >
		</span>
		<br/>
		<label class='col-3'>UO Registrazione documento</label>
		<span class='col-9'> 
	   		<input id="registraComunicazioneAvvio" class="form-control input-small" type="text" name="UO_RegistraComunicazioneAvvio" value="${UO_RegistraComunicazioneAvvio}" >
		</span>
	</div>
	
	<br/>
	<hr>
	<div class='container' >
	  <h4>Documento irrecivibilita'</h4>
	
		<label class='col-3'>UO Redazione documento</label>
		<span class='col-9'> 
	   		<input id="redazioneIrrecivibilita" class="form-control input-small" type="text" name="UO_RedazioneIrrecivibilita" value="${UO_RedazioneIrrecivibilita}" >
		</span>
		<br/>
		<label class='col-3'>UO Firma documento</label>
		<span class='col-9'> 
	   		<input id="firmaIrrecivibilita" class="form-control input-small" type="text" name="UO_FirmaIrrecivibilita" value="${UO_FirmaIrrecivibilita}" >
		</span>
		<br/>
		<label class='col-3'>UO Registrazione documento</label>
		<span class='col-9'> 
	   		<input id="registraIrrecivibilita" class="form-control input-small" type="text" name="UO_RegistraIrrecivibilita" value="${UO_RegistraIrrecivibilita}" >
		</span>
	</div>

	<br/>
	<hr>
	<div class='container' >
	  <h4>Documento richiesta integrazioni'</h4>
	
		<label class='col-3'>UO Redazione documento</label>
		<span class='col-9'> 
	   		<input id="redazioneRichiestaIntegrazioni" class="form-control input-small" type="text" name="UO_RedazioneRichiestaIntegrazioni" value="${UO_RedazioneRichiestaIntegrazioni}" >
		</span>
		<br/>
		<label class='col-3'>UO Firma documento</label>
		<span class='col-9'> 
	   		<input id="firmaRichiestaIntegrazioni" class="form-control input-small" type="text" name="UO_FirmaRichiestaIntegrazioni" value="${UO_FirmaRichiestaIntegrazioni}" >
		</span>
		<br/>
		<label class='col-3'>UO Registrazione documento</label>
		<span class='col-9'> 
	   		<input id="registraRichiestaIntegrazioni" class="form-control input-small" type="text" name="UO_RegistraRichiestaIntegrazioni" value="${UO_RegistraRichiestaIntegrazioni}" >
		</span>
	</div>

	<br/>
	<hr>
	<div class='container' >
	  <h4>Documento pareri interni'</h4>
	
		<label class='col-3'>UO Redazione documento</label>
		<span class='col-9'> 
	   		<input id="redazionePareriInterni" class="form-control input-small" type="text" name="UO_RedazionePareriInterni" value="${UO_RedazionePareriInterni}" >
		</span>
		<br/>
		<label class='col-3'>UO Firma documento</label>
		<span class='col-9'> 
	   		<input id="firmaPareriInterni" class="form-control input-small" type="text" name="UO_FirmaPareriInterni" value="${UO_FirmaPareriInterni}" >
		</span>
		<br/>
		<label class='col-3'>UO Registrazione documento</label>
		<span class='col-9'> 
	   		<input id="registraPareriInterni" class="form-control input-small" type="text" name="UO_RegistraPareriInterni" value="${UO_RegistraPareriInterni}" >
		</span>
  		<br/>
		<label class='col-3'>UO Approvazione documento</label>
		<span class='col-9'> 
	   		<input id="approvazionePareriInterni" class="form-control input-small" type="text" name="UO_ApprovazionePareriInterni" value="${UO_ApprovazionePareriInterni}" >
		</span>
	</div>

	<br/>
	<hr>
	<div class='container' >
	  <h4>Documento pareri esterni'</h4>
	
		<label class='col-3'>UO Redazione documento</label>
		<span class='col-9'> 
	   		<input id="redazionePareriEsterni" class="form-control input-small" type="text" name="UO_RedazionePareriEsterni" value="${UO_RedazionePareriEsterni}" >
		</span>
		<br/>
		<label class='col-3'>UO Firma documento</label>
		<span class='col-9'> 
	   		<input id="firmaPareriEsterni" class="form-control input-small" type="text" name="UO_FirmaPareriEsterni" value="${UO_FirmaPareriEsterni}" >
		</span>
		<br/>
		<label class='col-3'>UO Registrazione documento</label>
		<span class='col-9'> 
	   		<input id="registraPareriEsterni" class="form-control input-small" type="text" name="UO_RegistraPareriEsterni" value="${UO_RegistraPareriEsterni}" >
		</span>
		<br/>
		<label class='col-3'>UO Invia documento</label>
		<span class='col-9'> 
	   		<input id="inviaPareriEsterni" class="form-control input-small" type="text" name="UO_InvioPareriEsterni" value="${UO_InvioPareriEsterni}" >
		</span>

	</div>


	<br/>
	<hr>
	<div class='container' >
	  <h4>Documento provvidemento finale positivo'</h4>
	
		<label class='col-3'>UO Redazione documento</label>
		<span class='col-9'> 
	   		<input id="redazioneProvvFinalePositivo" class="form-control input-small" type="text" name="UO_RedazioneProvvFinalePositivo" value="${UO_RedazioneProvvFinalePositivo}" >
		</span>
		<br/>
		<label class='col-3'>UO Firma documento</label>
		<span class='col-9'> 
	   		<input id="firmaProvvFinalePositivo" class="form-control input-small" type="text" name="UO_FirmaProvvFinalePositivo" value="${UO_FirmaProvvFinalePositivo}" >
		</span>
		<br/>
		<label class='col-3'>UO Registrazione documento</label>
		<span class='col-9'> 
	   		<input id="registraProvvFinalePositivo" class="form-control input-small" type="text" name="UO_RegistraProvvFinalePositivo" value="${UO_RegistraProvvFinalePositivo}" >
		</span>
	</div>

	<br/>
	<hr>
	<div class='container'>
	  <h4>Documento finale'</h4>
	
		<label class='col-3'>UO Redazione documento</label>
		<span class='col-9'> 
	   		<input id="redazioneDocumentoFinale" class="form-control input-small" type="text" name="UO_RedazioneDocumentoFinale" value="${UO_RedazioneDocumentoFinale}" >
		</span>
		<br/>
		<label class='col-3'>UO Firma documento</label>
		<span class='col-9'> 
	   		<input id="firmaDocumentoFinale" class="form-control input-small" type="text" name="UO_FirmaDocumentoFinale" value="${UO_FirmaDocumentoFinale}" >
		</span>
		<br/>
		<label class='col-3'>UO Registrazione documento</label>
		<span class='col-9'> 
	   		<input id="registraDocumentoFinale" class="form-control input-small" type="text" name="UO_RegistraDocumentoFinale" value="${UO_RegistraDocumentoFinale}" >
		</span>
	</div>

	<br/>
        <hr>
	<div class='container'>
	  <h4>Documento provvedimento finale negativo'</h4>
	
		<label class='col-3'>UO Redazione documento</label>
		<span class='col-9'> 
	   		<input id="redazioneProvvFinaleNegativo" class="form-control input-small" type="text" name="UO_RedazioneProvvFinaleNegativo" value="${UO_RedazioneProvvFinaleNegativo}" >
		</span>
		<br/>
		<label class='col-3'>UO Firma documento</label>
		<span class='col-9'> 
	   		<input id="firmaProvvFinaleNegativo" class="form-control input-small" type="text" name="UO_FirmaProvvFinaleNegativo" value="${UO_FirmaProvvFinaleNegativo}" >
		</span>
		<br/>
		<label class='col-3'>UO Registrazione documento</label>
		<span class='col-9'> 
	   		<input id="registraProvvFinaleNegativo" class="form-control input-small" type="text" name="UO_RegistraProvvFinaleNegativo" value="${UO_RegistraProvvFinaleNegativo}" >
		</span>
	</div>

	<br/>
	<hr>
	<div class='container'>
	  <h4>Documento comunicazione diniego'</h4>
	
		<label class='col-3'>UO Redazione documento</label>
		<span class='col-9'> 
	   		<input id="redazioneComunicazioneDiniego" class="form-control input-small" type="text" name="UO_RedazioneComunicazioneDiniego" value="${UO_RedazioneComunicazioneDiniego}" >
		</span>
		<br/>
		<label class='col-3'>UO Firma documento</label>
		<span class='col-9'> 
	   		<input id="firmaComunicazioneDiniego" class="form-control input-small" type="text" name="UO_FirmaComunicazioneDiniego" value="${UO_FirmaComunicazioneDiniego}" >
		</span>
		<br/>
		<label class='col-3'>UO Registrazione documento</label>
		<span class='col-9'> 
	   		<input id="registraComunicazioneDiniego" class="form-control input-small" type="text" name="UO_RegistraComunicazioneDiniego" value="${UO_RegistraComunicazioneDiniego}" >
		</span>
	</div>


</div>

<br>
<br>
<div id="warning" class="bs-example" style="display:none;">
   <div class="alert alert-danger">
       <strong>Attenzione!</strong> <label id="warningLabel"></label>
   </div>
</div>

<br>
<br>

<button class='btn btn-small btn-primary' type='button' onclick="validazione()" name='outcome' value='Complete'>Completa attivita' </button>
</form>


<script>
$(document).ready(function() {$('.ConCom').on('click','.remove_field', function(e){ e.preventDefault(); $(this).parent().parent('div').remove();    })});function addRowConCom(){var values = $('#tagConCom').tokenInput('get');var item = '';if (values.length>0)item = values[0];else return;var value = item.id;var $element =$('<div />', { 'class': 'row ConComToRemove' }); var idUsed = Math.floor((Math.random() * 100000) + 1);var textValue = item.name;var $input = $('<input />', {    id: idUsed,name: 'assegnazione_out$$$'+idUsed+'.identity',value: item.id,type: 'hidden',readonly: 'readonly'});var $span6 = $('<span />').attr('class', 'col-6');var $span4 = $('<span />').attr('class', 'col-4');var $label = $('<label />', {    text:'Utente/Gruppo: '+textValue,    htmlFor:idUsed});$span6.append($label).append($input);var $select = $('<select />',{name:'assegnazione_out$$$'+idUsed+'.diritti'     });     var optConoscenza = $('<option></option>');            optConoscenza.text('Conoscenza');            optConoscenza.val('r');            optConoscenza.attr('selected', true);$select.append(optConoscenza);var optConoscenza = $('<option></option>');            optConoscenza.text('Competenza');            optConoscenza.val('w');            optConoscenza.attr('selected', false);$select.append(optConoscenza);$span4.append($select);var $span2 = $('<span />').attr('class', 'col-2');var newLink = $('<a />', {    id : 'id5',    class : 'remove_field',    href : '#',    text : 'Elimina utente'});$span2.append(newLink);$element.append($span6).append($span4).append($span2);$('.ConCom').append($element);$('#tagConCom').tokenInput('clear');}




$("input[type=radio]").change(function() {  
	if($(this).prop('name') == 'visualizzaGruppi'){
            if($(this).prop('value') == 'si'){
                 if (document.getElementById("smistamentoInterno").checked == true)
			{
                          $("#gruppoSmistamentoInterno").show();
			  $("#gruppoSmistamentoEsterno").hide();
			}
		else{
                          $("#gruppoSmistamentoInterno").hide();
			  $("#gruppoSmistamentoEsterno").show();
                     }
		   
                }
                else {
                   $("#gruppoSmistamentoInterno").hide();
	           $("#gruppoSmistamentoEsterno").hide();
                }
	}
        });




$("input[type=radio]").change(function() {  
	if($(this).prop('name') == 'unicoGruppoPerDocumenti'){
            if($(this).prop('value') == 'si'){

                   $("#gruppoSmistamentoInterno").hide();
	           $("#gruppoSmistamentoEsterno").hide();
                   $("#UnicoGruppo").show();
                   document.getElementById("visualizzaSi").disabled = true;
                   document.getElementById("visualizzaNo").disabled = true;
                   
                }
                else {
                   document.getElementById("visualizzaSi").disabled = false;
                   document.getElementById("visualizzaNo").disabled = false;
                 if (document.getElementById("visualizzaSi").checked==true)
			{
                          if (document.getElementById("smistamentoInterno").checked==true)
			    {
                          	$("#gruppoSmistamentoInterno").show();
			  	$("#gruppoSmistamentoEsterno").hide();
				$("#UnicoGruppo").hide();
			     }
			  else{
                          	$("#gruppoSmistamentoInterno").hide();
			  	$("#gruppoSmistamentoEsterno").show();
				$("#UnicoGruppo").hide();
                     	   }
				
			}
                
 		else
		{
		   $("#gruppoSmistamentoInterno").hide();
	           $("#gruppoSmistamentoEsterno").hide();	
		   $("#UnicoGruppo").hide();
		}
	}
 }
        });


$("input[type=radio]").change(function() {  
	if($(this).prop('name') == 'smistamento'){
            if($(this).prop('value') == 'interno'){
                 if (document.getElementById("visualizzaSi").checked == true)
			{
                          $("#gruppoSmistamentoInterno").show();
			  $("#gruppoSmistamentoEsterno").hide();
			}
		  else{
                          $("#gruppoSmistamentoInterno").hide();
			  $("#gruppoSmistamentoEsterno").hide();
                     }
		   
                }
                else {
                   if (document.getElementById("visualizzaSi").checked == true)
			{
                          $("#gruppoSmistamentoInterno").hide();
			  $("#gruppoSmistamentoEsterno").show();
			}
		  else{
                          $("#gruppoSmistamentoInterno").hide();
			  $("#gruppoSmistamentoEsterno").hide();
                     }
                }
	}
        });



function validazione(){


if (document.getElementById("unicoGruppoSi").checked == true)
          {


               if(document.getElementById("redazioneAll").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la redazione dei documenti!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
              if(document.getElementById("firmaAll").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la firma dei documenti!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
 if(document.getElementById("registraAll").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la protocollazione dei documenti!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
                
		else
		{
			var red = document.getElementById("redazioneAll").value;
                        var firma=document.getElementById("firmaAll").value;
                        var reg= document.getElementById("registraAll").value;

                 	document.getElementById("redazioneSmistamentoEsterno").value=red;
			document.getElementById("firmaSmistamentoEsterno").value=firma;
			document.getElementById("registraSmistamentoEsterno").value=reg;
			document.getElementById("redazioneMotiviOstativi").value=red;
			document.getElementById("firmaMotiviOstativi").value=firma;
			document.getElementById("registraMotiviOstativi").value=reg;
			document.getElementById("redazioneComunicazioneAvvio").value=red;
			document.getElementById("firmaComunicazioneAvvio").value=firma;
			document.getElementById("registraComunicazioneAvvio").value=reg;
			document.getElementById("redazioneIrrecivibilita").value=red;
			document.getElementById("firmaIrrecivibilita").value=firma;
			document.getElementById("registraIrrecivibilita").value=reg;
			document.getElementById("redazioneRichiestaIntegrazioni").value=red;
			document.getElementById("firmaRichiestaIntegrazioni").value=firma;
			document.getElementById("registraRichiestaIntegrazioni").value=reg;
			document.getElementById("redazionePareriInterni").value=red;
			document.getElementById("firmaPareriInterni").value=firma;
			document.getElementById("registraPareriInterni").value=reg;
			document.getElementById("approvazionePareriInterni").value=firma;
			document.getElementById("redazionePareriEsterni").value=red;
			document.getElementById("firmaPareriEsterni").value=firma;
			document.getElementById("registraPareriEsterni").value=reg;
			document.getElementById("inviaPareriEsterni").value=reg;
			document.getElementById("redazioneProvvFinalePositivo").value=red;
			document.getElementById("firmaProvvFinalePositivo").value=firma;
			document.getElementById("registraProvvFinalePositivo").value=reg;
			document.getElementById("redazioneDocumentoFinale").value=red;
			document.getElementById("firmaDocumentoFinale").value=firma;
			document.getElementById("registraDocumentoFinale").value=reg;
			document.getElementById("redazioneProvvFinaleNegativo").value=red;
			document.getElementById("firmaProvvFinaleNegativo").value=firma;
			document.getElementById("registraProvvFinaleNegativo").value=reg;
			document.getElementById("redazioneComunicazioneDiniego").value=red;
			document.getElementById("firmaComunicazioneDiniego").value=firma;
			document.getElementById("registraComunicazioneDiniego").value=reg;
					 	
		}
   	   }

else
{
	if(document.getElementById("redazioneSmistamentoEsterno").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la redazione della lettera accompagnatoria!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("firmaSmistamentoEsterno").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la firma della lettera accompagnatoria!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("registraSmistamentoEsterno").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la registrazione della lettera accompagnatoria!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("redazioneMotiviOstativi").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la redazione del documento motivi ostativi!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("firmaMotiviOstativi").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la firma del documento motivi ostativi!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("registraMotiviOstativi").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la registrazione del documento motivi ostativi!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("redazioneComunicazioneAvvio").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la redazione della comunicazione di avvio!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("firmaComunicazioneAvvio").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la firma della comunicazione di avvio!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("registraComunicazioneAvvio").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la registrazione della comunicazione di avvio!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("redazioneIrrecivibilita").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la redazione del documento di irricivibilita!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("firmaIrrecivibilita").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la firma del documento di irricivibilita!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("registraIrrecivibilita").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la registrazione del documento di irricivibilita!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("redazioneRichiestaIntegrazioni").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la redazione del documento di richiesta integrazioni!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("firmaRichiestaIntegrazioni").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la firma del documento di richiesta integrazioni!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("registraRichiestaIntegrazioni").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la registrazione del documento di richiesta integrazioni!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("redazionePareriInterni").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la redazione del documento per i pareri interni!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("firmaPareriInterni").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la firma del documento per i pareri interni!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("registraPareriInterni").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la registrazione del documento per i pareri interni!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("approvazionePareriInterni").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per approvare il documento per i pareri interni!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("redazionePareriEsterni").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la redazione del documento  di pareri esterni!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("firmaPareriEsterni").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la firma del documento  di pareri esterni !";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("registraPareriEsterni").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la registrazione del documento  di pareri esterni!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("inviaPareriEsterni").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per inviare il documento  di pareri esterni!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("redazioneProvvFinalePositivo").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la redazione del documento  di provvedimenti finale positivi!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("firmaProvvFinalePositivo").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la firma del documento  di provvedimenti finale positivi!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("registraProvvFinalePositivo").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la registrazione del documento  di provvedimenti finale positivi!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("redazioneDocumentoFinale").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la redazione del documento finale!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("firmaDocumentoFinale").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la firma del documento finale!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("registraDocumentoFinale").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la registrazione del documento finale!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("redazioneProvvFinaleNegativo").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la redazione del documento di provvedimenti finale negativo!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("firmaProvvFinaleNegativo").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la firma del documento di provvedimenti finale negativo!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("registraProvvFinaleNegativo").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la registrazione del documento di provvedimenti finale negativo!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("redazioneComunicazioneDiniego").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la redazione del documento di diniego!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("firmaComunicazioneDiniego").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la firma del documento di diniego!";
			  document.getElementById("warning").style.display="block";
			  return;
			}
	if(document.getElementById("registraComunicazioneDiniego").value==""){
			  document.getElementById("warningLabel").innerHTML = "E' necessario specificare un gruppo per la registrazione del documento di diniego!";
			  document.getElementById("warning").style.display="block";
			  return;
			}

}




document.getElementById("warning").style.display="none";
document.getElementById("form_gruppi").submit();

}

</script>
