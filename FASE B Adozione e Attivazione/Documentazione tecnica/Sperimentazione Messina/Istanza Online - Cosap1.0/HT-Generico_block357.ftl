<style type="text/css">
.ConComToRemove {margin-left:0px; }
	

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

<div class='container'>
<form action='complete' id="verifica_amministrativa" method='POST' enctype='multipart/form-data'>
<h2>Verifica amministrativa - gestione incaricato e firmatario</h2>

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
	  <!--<#if documentoProtocollato.NUM_PG?has_content>-->
Numero protocollo: ${documentoProtocollato.NUM_PG} - Anno protocollo: ${documentoProtocollato.ANNO_PG}
       <!--</#if>-->
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
  <p><strong>${documento.DOCNAME}</strong>
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
</div>	
	
<!--Fine consultazione documenti-->	
	
<br>
<br>
<div class='row'>
	<label class='col-3'>Incaricato</label> 
   	<span class='col-9'> 
		<input type="text" name='incaricato' class='form-control input-small' id='incaricato'  value="${incaricato}" > 
	</span>
		 
</div>

<br>
<br>
<hr>

<div class='ConCom row'>
	<fieldset>
		<legend >Firmatari</legend>
		<label for='tag'>Gruppo: </label>
		<input type='text'  class='auto-completion' data-context='AppBPM' data-sede='${sede}' data-source='groups'  id='tagConCom' />
		<button type='button' onclick='javascript:addRowConCom()' class='btn btn-small btn-primary' >Aggiungi</button>
		<!-- <#if listaFirmatari?has_content> -->
		<br/>
		<br/>
		<!-- <#list listaFirmatari as ass> -->
		<div class='removeDiv_${ass_index}'>
			<label for='tag'>Gruppo: ${ass.descrizione} - ${ass.identity} </label>
			<i class='glyphicon glyphicon-remove' remove-all data-target='.removeDiv_${ass_index}'>Rimuovi</i>&nbsp;&nbsp;&nbsp;
			<input class='firmatariUO' name='assegnazione_out$$$${ass_index}.identity' value='${ass.identity}' type='hidden' >
			<br>
		</div>
				<!-- </#list> -->
				<!-- </#if> -->
			
	 </fieldset>
</div>


<input type="hidden" id="UOfirma" name="UO_firma">

<div id="warning" class="bs-example" style="display:none;">
   <div class="alert alert-danger">
       <strong>Attenzione!</strong> <label id="warningLabel"></label>
   </div>
</div>
<br>
<br>
<button class='btn btn-small btn-primary'  type='button'  onclick="validazione()"  name='outcome'  value='Complete'>Completa attivita'</button>
</form>
</div>

<script>
$(document).ready(function() {
    $('.ConCom').on('click', '.remove_field', function(e) {
        e.preventDefault();
        $(this).parent().parent('div').remove();
    })
});

function addRowConCom() {
    var values = $('#tagConCom').tokenInput('get');
    var item = '';
    if (values.length > 0) item = values[0];
    else return;
    var value = item.id;
    var $element = $('<div />', {
        'class': 'row ConComToRemove'
    });
    var idUsed = Math.floor((Math.random() * 100000) + 1);
    var textValue = item.name;
	textValue=textValue.replace('(',' - ');
	textValue=textValue.replace(')','');
    var $input = $('<input />', {
        id: idUsed,
        name: 'assegnazione_out$$$' + idUsed + '.identity',
        value: item.id,
        type: 'hidden',
        readonly: 'readonly',
		class:'firmatariUO'
    });
    var $span6 = $('<span />').attr('class', 'col-6');
    var $span4 = $('<span />').attr('class', 'col-4');
    var $label = $('<label />', {
        text: 'Gruppo: ' + textValue,
        htmlFor: idUsed
    });
    $span6.append($label).append($input);
    var $select = $('<select />', {
        name: 'assegnazione_out$$$' + idUsed + '.diritti'
    });
   /* var optConoscenza = $('<option></option>');
    optConoscenza.text('Conoscenza');
    optConoscenza.val('r');
    optConoscenza.attr('selected', true);
    $select.append(optConoscenza);
    var optConoscenza = $('<option></option>');
    optConoscenza.text('Competenza');
    optConoscenza.val('f');
    optConoscenza.attr('selected', false);
    $select.append(optConoscenza);
    $span4.append($select);*/
    var $span2 = $('<span />').attr('class', 'col-2');
    var newLink = $('<a />', {
        id: 'id5',
        class: 'remove_field glyphicon glyphicon-remove',
        href: '#',
        text: 'Rimuovi'
    });
    $span2.append(newLink);
    //$element.append($span6).append($span4).append($span2);
	$element.append($span6).append($span2);
    $('.ConCom').append($element);
    $('#tagConCom').tokenInput('clear');
}

function validazione()
{
	var concat="";
	$( ".firmatariUO" ).each(function(index,elem) {
	if(index==0){
	 concat=$(elem).val();
	}
	else{
	concat=concat+","+$(elem).val();}
	console.log(index);  
	console.log( $(elem).val());
	});
	console.log(concat);
	
	
	if (concat==""){
document.getElementById("warningLabel").innerHTML = "E' necessario selezionare almeno una UO!";
			  document.getElementById("warning").style.display="block";
			  return;
}

if (concat!=""){
document.getElementById('UOfirma').value=concat; 
document.getElementById("warning").style.display="none";
document.getElementById("verifica_amministrativa").submit();

}

 
}
	
</script>