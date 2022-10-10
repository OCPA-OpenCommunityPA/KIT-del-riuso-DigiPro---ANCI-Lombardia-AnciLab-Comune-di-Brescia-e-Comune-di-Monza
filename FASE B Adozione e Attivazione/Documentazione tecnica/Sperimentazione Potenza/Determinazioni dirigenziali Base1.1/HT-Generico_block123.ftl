<form action='complete' method='POST' enctype='multipart/form-data'><div>
<hr>

<div class="container">
  <h2>Gestione omissis</h2>
  <p>Seleziona i campi che devono essere omissis in pubblicazione:</p>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Nome</th>
        <th>Valore</th>
        <th>Omissis</th>
      </tr>
    </thead>
    <tbody>
<!--controllo se la determina e' con o senza spese-->

<!--<#if tipo_determina=="senza_impegno">-->

	  
	<tr>
		<td>Altri Dispositivi</td>
		<td>${variabili_determina.DispAltriDisp}</td>
		<td><input type="checkbox" value="DispAltriDisp"></td>
	</tr>

	<tr>
		<td>Variazioni piano delle performance</td>
		<td>${variabili_determina.AttoVariazPP}</td>
		<td><input type="checkbox" value="AttoVariazPP"></td>
	</tr>

	<tr>
		<td>Atto Normativa Statale</td>
		<td>${variabili_determina.AttoNormativaStatale}</td>
		<td><input type="checkbox" value="AttoNormativaStatale"></td>
	</tr>

	<tr>
		<td>Intestazione oggetto</td>
		<td>${variabili_determina.Intoggetto}</td>
		<td><input type="checkbox" value="Intoggetto"></td>
	</tr>

	<tr>
		<td>Codice settore/Direzione/DG</td>
		<td>${variabili_determina.IntCodSett}</td>
		<td><input type="checkbox" value="IntCodSett"></td>
	</tr>
	<tr>
		<td>Piano delle performance</td>
		    <td>${variabili_determina.AttoPP}</td>
		<td><input type="checkbox" value="AttoPP"></td>
	</tr>

	<tr>
		<td>Destinatari</td>
		<td>${variabili_determina.DispDispDestin}</td>
		<td><input type="checkbox" value="DispDispDestin"></td>
	</tr>

	<tr>
		<td>Codice DUP</td>
		   <td>${variabili_determina.AttoDUP}</td>
		<td><input type="checkbox" value="AttoDUP"></td>
	</tr>

	<tr>
		<td>Stakeholder</td>
		<td>${variabili_determina.AttoStakehold}</td>
		<td><input type="checkbox" value="AttoStakehold"></td>
	</tr>

	<tr>
		<td>Beneficiari</td>
		<td>${variabili_determina.DispDispBenef}</td>
		<td><input type="checkbox" value="DispDispBenef"></td>
	</tr>

	<tr>
		<td>Dispositivo CUP</td>
		<td>${variabili_determina.IntDispCUP}</td>
		<td><input type="checkbox" value="IntDispCUP"></td>
	</tr>

	<tr>
		<td>Dispositivo Principale</td>
		<td>${variabili_determina.DispDisp1}</td>
		<td><input type="checkbox" value="DispDisp1"></td>
	</tr>
	<tr>
		<td>Descrizione DUP</td>
		<td>${variabili_determina.IntDescrDUP}</td>
		<td><input type="checkbox" value="IntDescrDUP"></td>
	</tr>


	<tr>
		<td>Finalita' perseguite </td>
		<td>${variabili_determina.AttoFinalita}</td>
		<td><input type="checkbox" value="AttoFinalita"></td>
	</tr>

	<tr>
		<td>Pareri Istruttoria</td>
		<td>${variabili_determina.AttoPareriIstr}</td>
		<td><input type="checkbox" value="AttoPareriIstr"></td>
	</tr>

	<tr>
		<td>Certificazioni/Nullaosta</td>
		<td>${variabili_determina.AttoCertifNullaosta}</td>
		<td><input type="checkbox" value="AttoCertifNullaosta"></td>
	</tr>

	<tr>
		<td>Descrizione processo</td>
		<td>${variabili_determina.IntDescrCDRProc}</td>
		<td><input type="checkbox" value="IntDescrCDRProc"></td>
	</tr>

	<tr>
		<td>Codice ufficio/servizio</td>
		<td>${variabili_determina.IntCodUffProp}</td>
		<td><input type="checkbox" value="IntCodUffProp"></td>
	</tr>

	<tr>
		<td>Normativa comunale</td>
		<td>${variabili_determina.AttoNormativaComunale}</td>
		<td><input type="checkbox" value="AttoNormativaComunale"></td>
	</tr>

	<tr>
		<td>Premesse</td>
		<td>${variabili_determina.AttoPremesse}</td>
		<td><input type="checkbox" value="AttoPremesse"></td>
	</tr>


	<tr>
		<td>Normativa UE</td>
		<td>${variabili_determina.AttoNormativaUE}</td>
		<td><input type="checkbox" value="AttoNormativaUE"></td>
	</tr>

	<tr>
		<td>Dispositivo CIG</td>
		<td>${variabili_determina.IntDispCIG}</td>
		<td><input type="checkbox" value="IntDispCIG"></td>
	</tr>

	<tr>
		<td>Responsabile processo</td>
		<td>${variabili_determina.IntRespCDRProc}</td>
		<td><input type="checkbox" value="IntRespCDRProc"></td>
	</tr>


	<tr>
		<td>Atti precedenti</td>
		<td>${variabili_determina.AttoAttiPrec}</td>
		<td><input type="checkbox" value="AttoAttiPrec"></td>
	</tr>

	<tr>
		<td>Testo libero</td>
		<td>${variabili_determina.AttoTestoLibero}</td>
		<td><input type="checkbox" value="AttoTestoLibero"></td>
	</tr>


	<tr>
		<td>Aggiornamento DUP</td>
		<td>${variabili_determina.AttoAggDUP}</td>
		<td><input type="checkbox" value="AttoAggDUP"></td>
	</tr>


	<tr>
		<td>Descrizione ufficio/servizio proponente</td>
		<td>${variabili_determina.IntDescrUffProp}</td>
		<td><input type="checkbox" value="IntDescrUffProp"></td>
	</tr>

	<tr>
		<td>Codice DUP</td>
		<td>${variabili_determina.IntCodDUP}</td>
		<td><input type="checkbox" value="IntCodDUP"></td>
	</tr>

	<tr>
		<td>Verifica presupposti di fatto</td>
		<td>${variabili_determina.AttoVerifPresupp}</td>
		<td><input type="checkbox" value="AttoVerifPresupp"></td>
	</tr>


	<tr>
		<td>Codice processo</td>
		<td>${variabili_determina.IntCodCDRProc}</td>
		<td><input type="checkbox" value="IntCodCDRProc"></td>
	</tr>

	<tr>
		<td>Presupposti di fatto</td>
		<td>${variabili_determina.AttoPresuppostiFatto}</td>
		<td><input type="checkbox" value="AttoPresuppostiFatto"></td>
	</tr>

	<tr>
		<td>Normativa regionale</td>
		<td>${variabili_determina.AttoNormativaRegionale}</td>
		<td><input type="checkbox" value="AttoNormativaRegionale"></td>
	</tr>

	<tr>
		<td>Settore/Direzione/DG</td>
		<td>${variabili_determina.IntDescrSett}</td>
		<td><input type="checkbox" value="IntDescrSett"></td>
	</tr>


	<tr>
		<td>Contraenti</td>
		<td>${variabili_determina.DispDispContr}</td>
		<td><input type="checkbox" value="DispDispContr"></td>
	</tr>

	<tr>
		<td>Procedure di controllo </td>
		<td>${variabili_determina.DispProcContr}</td>
		<td><input type="checkbox" value="DispProcContr"></td>
	</tr>


<!-- </#if> -->

<!--<#if tipo_determina!="senza_impegno">-->


		<tr>
			<td>Atti precedenti</td>
			<td>${variabili_determina.AttoAttiPrec}</td> 
			<td><input type="checkbox" value="AttoAttiPrec"></td>  

		</tr> 
		<tr>
			<td>Certificazioni/Nullaosta</td>
			<td>${variabili_determina.AttoCertifNullaosta}</td> 
			<td><input type="checkbox" value="AttoCertifNullaosta"></td>  

		</tr> 
		<tr>
			<td>Finalita' perseguite</td>
			<td>${variabili_determina.AttoFinalita}</td> 
			<td><input type="checkbox" value="AttoFinalita"></td>  

		</tr> 
		<tr>
			<td>Normativa comunale</td>
			<td>${variabili_determina.AttoNormativaComunale}</td> 
		<td><input type="checkbox" value="AttoNormativaComunale"></td>  

		</tr> 
		<tr>
			<td>Normativa regionale</td>
			<td>${variabili_determina.AttoNormativaRegionale}</td> 
		<td><input type="checkbox" value="AttoNormativaRegionale"></td>  

		</tr> 
		<tr>
			 <td>Normativa statale</td>
			<td>${variabili_determina.AttoNormativaStatale}</td> 
			<td><input type="checkbox" value="AttoNormativaStatale"></td>  

		</tr> 
		<tr>
			<td>Normativa UE</td>
			<td>${variabili_determina.AttoNormativaUE}</td> 
			<td><input type="checkbox" value="AttoNormativaUE"></td>  

		</tr> 
		<tr>
			<td>Piano delle performance</td>
			<td>${variabili_determina.AttoPP}</td> 
			<td><input type="checkbox" value="AttoPP"></td>  

		</tr> 
		<tr>
			<td>Pareri istruttoria</td>
			<td>${variabili_determina.AttoPareriIstr}</td> 
			<td><input type="checkbox" value="AttoPareriIstr"></td>  

		</tr> 
		<tr>
			<td>Premesse</td>
			<td>${variabili_determina.AttoPremesse}</td> 
			<td><input type="checkbox" value="AttoPremesse"></td>  

		</tr> 
		<tr>
			<td>Presupposti di fatto</td>
			<td>${variabili_determina.AttoPresuppostiFatto}</td> 
			<td><input type="checkbox" value="AttoPresuppostiFatto"></td>  

		</tr> 
		<tr>
			<td>Stakeholder</td>
			<td>${variabili_determina.AttoStakehold}</td> 
			<td><input type="checkbox" value="AttoStakehold"></td>  

		</tr> 
		<tr>
			<td>Testo libero</td>
			<td>${variabili_determina.AttoTestoLibero}</td> 
			<td><input type="checkbox" value="AttoTestoLibero"></td>  

		</tr> 
		<tr>
			<td>Variazioni piano delle performance</td>
			<td>${variabili_determina.AttoVariazPP}</td> 
			<td><input type="checkbox" value="AttoVariazPP"></td>  

		</tr> 

		<tr>
			<td>Verifica presupposti di fatto</td>
			<td>${variabili_determina.AttoVerifPresupp}</td> 
			<td><input type="checkbox" value="AttoVerifPresupp"></td>  
		</tr> 



		<!--
		<tr>
			<td></td>
			<td>${variabili_determina.DatiBilDescrTipoBil}</td> 
		<td><input type="checkbox" value="DatiBilDescrTipoBil"></td>  

		</tr> 
		<tr>
			<td></td>
			<td>${variabili_determina.DatiBilTestoANAC}</td> 
		<td><input type="checkbox" value="DatiBilTestoANAC"></td>  

		</tr> 
		<tr>
			<td></td>
			<td>${variabili_determina.DatiBilTestoAcc}</td> 
		<td><input type="checkbox" value="DatiBilTestoAcc"></td>  

		</tr> 
		<tr>
			<td></td>
			<td>${variabili_determina.DatiBilTestoImp}</td> 
		<td><input type="checkbox" value="DatiBilTestoImp"></td>  

		</tr> 

		-->



		<tr>
			<td>Altri dispositivi</td>
			<td>${variabili_determina.DispAltriDisp}</td> 
			<td><input type="checkbox" value="DispAltriDisp"></td>  
		</tr> 

		<tr>
			<td>Dispositivo principale</td>
			<td>${variabili_determina.DispDisp1}</td> 
			<td><input type="checkbox" value="DispDisp1"></td>  
		</tr> 


		<tr>
			<td>Beneficiari</td>
			<td>${variabili_determina.DispDispBenef}</td> 
			<td><input type="checkbox" value="DispDispBenef"></td>  
		</tr> 

		<tr>
			<td>Contraenti</td>
			<td>${variabili_determina.DispDispContr}</td> 
		<td><input type="checkbox" value="DispDispContr"></td>  

		</tr> 
		<tr>
			 <td>Destinatari</td>
			<td>${variabili_determina.DispDispDestin}</td> 
			<td><input type="checkbox" value="DispDispDestin"></td>  
		</tr> 
		<tr>
			<td>Procedure di controllo </td>
			<td>${variabili_determina.DispProcContr}</td> 
			<td><input type="checkbox" value="DispProcContr"></td>  
		</tr> 

		<tr>
			 <td>Codice processo</td>
			<td>${variabili_determina.IntCodCDRProc}</td> 
			<td><input type="checkbox" value="IntCodCDRProc"></td>  

		</tr> 

		<tr>
			 <td>Codice DUP</td>
			<td>${variabili_determina.IntCodDUP}</td> 
			<td><input type="checkbox" value="IntCodDUP"></td>  

		</tr> 
		<tr>
			<td>Codice settore/Direzione/DG</td>
			<td>${variabili_determina.IntCodSett}</td> 
		<td><input type="checkbox" value="IntCodSett"></td>  

		</tr> 
		<tr>
			<td>Codice ufficio/servizio proponente</td>
			<td>${variabili_determina.IntCodUffProp}</td> 
		<td><input type="checkbox" value="IntCodUffProp"></td>  

		</tr> 
		<tr>
			<td>Descrizione processo</td>
			<td>${variabili_determina.IntDescrCDRProc}</td> 
		<td><input type="checkbox" value="IntDescrCDRProc"></td>  

		</tr> 
		<tr>
			<td>Descrizione DUP</td>
			<td>${variabili_determina.IntDescrDUP}</td> 
		<td><input type="checkbox" value="IntDescrDUP"></td>  

		</tr> 
		<tr>
			<td>Settore/Direzione/DG</td>
			<td>${variabili_determina.IntDescrSett}</td> 
			<td><input type="checkbox" value="IntDescrSett"></td>  

		</tr> 
		<tr>
			<td>Descrizione ufficio/servizio proponente</td>
			<td>${variabili_determina.IntDescrUffProp}</td> 
			<td><input type="checkbox" value="IntDescrUffProp"></td>  

		</tr> 
		<tr>
			<td>Dispositivo CIG</td>
			<td>${variabili_determina.IntDispCIG}</td> 
			<td><input type="checkbox" value="IntDispCIG"></td>  

		</tr> 
		<tr>
			 <td>Dispositivo CUP</td>
			<td>${variabili_determina.IntDispCUP}</td> 
		<td><input type="checkbox" value="IntDispCUP"></td>  

		</tr> 
		<tr>
			 <td>Responsabile processo</td>
			<td>${variabili_determina.IntRespCDRProc}</td> 
		<td><input type="checkbox" value="IntRespCDRProc"></td>  

		</tr> 
		<tr>
			 <td>Oggetto</td>
			<td>${variabili_determina.Intoggetto}</td> 
		<td><input type="checkbox" value="Intoggetto"></td>  

		</tr> 
		<tr>
			<td>POP</td>
			<td>${variabili_determina.PgmTriennLavPOP}</td> 
		<td><input type="checkbox" value="PgmTriennLavPOP"></td>  

		</tr> 


		<!--
		<tr>
			<td></td>
			<td>${variabili_determina.tabellaANAC}</td> 
		<td><input type="checkbox" value="tabellaANAC"></td>  

		</tr> 
		<tr>
			<td></td>
			<td>${variabili_determina.tabellaAccertamento}</td> 
		<td><input type="checkbox" value="tabellaAccertamento"></td>  

		</tr> 
		<tr>
			<td></td>
			<td>${variabili_determina.tabellaImpegno}</td> 
		<td><input type="checkbox" value="tabellaImpegno"></td>  

		</tr> 

		-->

<!-- </#if> -->

    </tbody>
  </table>
</div>


<input type="hidden" id="omissis" name="omissis" value="">
<button class='btn btn-small btn-primary' name='outcome' value='Complete' type="submit" >Completa attivita'</button>
</form>
</div>

<script>

$("input[type=checkbox]").change(function() {  
    if($(this).prop('checked')){
             var omissis = document.getElementById("omissis").value;
             var newChecked = $(this).prop('value');
             var newOmissis="";
             if(omissis==""){
                newOmissis = newChecked;
             }
             else{
                newOmissis = omissis.concat(",",newChecked);
             }
             document.getElementById("omissis").value = newOmissis;
             console.log(document.getElementById("omissis").value);
    }
        else{
             var omissis = document.getElementById("omissis").value;
             var unChecked = $(this).prop('value');
             var a = omissis.includes(unChecked+",");
             var b = omissis.includes(","+unChecked);
             var c = omissis.includes(unChecked);
             var res="";
             if(a){
                   res = omissis.replace(unChecked+",", "");
             }else if(b){
                   res = omissis.replace(","+unChecked, "");
             }else if(c){
                   res = omissis.replace(unChecked, "");
             }
           
             document.getElementById("omissis").value = res;
             console.log(document.getElementById("omissis").value);
    }
});

</script>