<style type="text/css">
.ConComToRemove {margin-top:30px; }
</style>
<form action='complete' method='POST' enctype='multipart/form-data'  id="formInvio" class='ad-search form-horizontal'>
<h2>Determinazioni dirigenziali - Avvio del procedimento</h2>
<hr>
<br>
<div id="warning" class="bs-example" style="display:none;">
    <div class="alert alert-danger">
        <strong>Attenzione!</strong> <label id="warningLabel"></label>
    </div>
</div>

<div class='container'>
<hr>    
    <label class='col-3'>Oggetto</label> 
        <span class='col-9'>
        <textarea id="Intoggetto" class="form-control" name="oggetto_start"></textarea>
        </span>
</div>
<br>

<div class='container'>
<hr>
    <label class='col-3'>Indicare il tipo di determina</label>      
        <span class='col-9'> 
        <br>
                <input type="radio" name="tipo_determina" id="inlineRadio1" value="con_impegno_spese" checked>Con impegno di spesa (Spese correnti)
        <br>
                <input type="radio" name="tipo_determina" id="inlineRadio2" value="con_impegno_investimenti">Con impegno di spesa (Investimenti)
                <br>
                <input type="radio" name="tipo_determina" id="inlineRadio3" value="senza_impegno">Senza impegno di spesa e senza entrate
                <br>
                <input type="radio" name="tipo_determina" id="inlineRadio4" value="entrate_spese">Con entrate e spese (Spese correnti)
                <br>
                <input type="radio" name="tipo_determina" id="inlineRadio4" value="entrate_investimenti">Con entrate e spese (Investimenti)
                <br>
                <input type="radio" name="tipo_determina" id="inlineRadio5" value="solo_entrate">Con entrate
        </span>
</div>
<br>
<div class='container'>
<div class='ConCom row'>
                        <fieldset>
                        <legend>Ruolo di accesso/inserimento</legend>
                        <label for='tag'>Gruppo: </label><input type='text'  class='auto-completion' data-context='AppBPM' data-sede='${sede}' data-source='membershipGroups'  id='tagConCom' /><button type='button' onclick='javascript:addRowConCom()' class='btn btn-small btn-primary' id='bottoneAggiungi'>Aggiungi</button>
                        </fieldset>
</div>
</div>
<br>

<button class='btn btn-small btn-primary' name='outcome' value='Complete' onclick="validazione()" type="button" >Avvia procedimento</button>
</form>

<script>
function validazione() {
$( "form[action='complete']" ).addClass('loading');
   
    if( document.getElementsByClassName("remove_field glyphicon glyphicon-remove").length==0){
      document.getElementById("warningLabel").innerHTML = "E' necessario specificare il Ruolo di accesso/inserimento!";
      document.getElementById("warning").style.display="block";
$( "form[action='complete']" ).removeClass('loading');
      return;
    }

if(document.getElementById("Intoggetto").value==""){
				document.getElementById("warningLabel").innerHTML = "Inserire l'oggetto!";
	           	document.getElementById("warning").style.display="block";
$( "form[action='complete']" ).removeClass('loading');
	           	return;     
	}

        document.getElementById("warning").style.display="none";
        document.getElementById("formInvio").submit();
    }
</script>

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
    var $input = $('<input />', {
        id: idUsed,
        name: 'figura_professionale',
        value: item.id,
        type: 'hidden',
        readonly: 'readonly'
    });
     var start_pos = textValue.indexOf('(');
     var end_pos = textValue.indexOf(')',start_pos);
     var description = textValue.substring(0,start_pos)
    var $input2 = $('<input />', {
        id: idUsed+1,
        name: 'descrizione_ufficioCompetenza',
        value: description,
        type: 'hidden',
        readonly: 'readonly'
    });
    
    var $span6 = $('<span />').attr('class', 'col-6');
    var $span4 = $('<span />').attr('class', 'col-4');
    var $label = $('<label />', {
        text: 'Gruppo: ' + textValue,
        htmlFor: idUsed
    });
    $span6.append($label).append($input);
    $span6.append($label).append($input2);
    

    var $span2 = $('<span />').attr('class', 'col-2');
    var newLink = $('<a />', {
        id: 'id5',
        class: 'remove_field glyphicon glyphicon-remove',
        href: '#',
        onClick: 'javascript:mostraBottoreAggiugi()'
        
      
    });
    $span2.append(newLink);
    $element.append($span6).append($span4).append($span2);
    $('.ConCom').append($element);
    $('#tagConCom').tokenInput('clear');
    $('#bottoneAggiungi').hide();
    
}



function mostraBottoreAggiugi(){
$('#bottoneAggiungi').show();
}

</script>