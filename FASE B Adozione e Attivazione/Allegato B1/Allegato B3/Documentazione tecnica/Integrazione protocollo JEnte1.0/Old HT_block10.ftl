<form action='complete' method='POST' enctype='multipart/form-data'><div>
<h2>GESTIONE ERRORE DI PROTOCOLLO</h2>
<hr>
<p>La chiamata di protocollo ha restituito la seguente response:</p>
<!-- <#if messaggioProtoPartenza?hasContent> -->
        <p><label>ErrorMessage:</label> ${messaggioProtoPartenza}</p>
       
    <!-- </#if> -->

<br>
<p>Completa il task per rieseguire l'operazione.</p>
<BR/>
<button type='submit'  class="btn btn-primary" value='Complete'>Completa attivit&agrave;</button>
</form>
</div>