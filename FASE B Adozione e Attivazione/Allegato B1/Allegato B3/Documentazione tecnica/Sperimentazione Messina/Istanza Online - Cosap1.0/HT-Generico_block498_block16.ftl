<style>
      .the-legend {
            font-size: 1.2em !important;
            font-weight: bold !important;
            text-align: left !important;
            width: auto;
            padding: 0 10px;
            border-bottom: none;
      }

      .the-fieldset {
            border: 1px groove #ddd !important;
            padding: 0 1.4em 1.4em 1.4em !important;
            margin: 0 0 1.5em 0 !important;
            -webkit-box-shadow: 0px 0px 0px 0px #000;
            box-shadow: 0px 0px 0px 0px #000;
      }
</style>
<div class="container">
      <form action='complete' method='POST' enctype='multipart/form-data'>

            <h2>Gestione testo di notifica per il Portale - ricevuta di pagamento servizio cosap</h2>

            <hr>

            <br>
           

            <div class='row'>
                 
                  <div class="alert alert-info">Inserire note per il portale</div>
                  <div class="col-sm-4">
                        <label>Note per il Portale </label>
                  </div>
                  <div class="col-sm-4">
                        <p> <textarea name='message_ricevutaPagamento' value='message_ricevutaPagamento' class='form-control'></textarea></p>
                  </div>

            </div>
            <br>

            <button class='btn btn-small btn-primary' type='submit' name='outcome' value='Complete'>Completa
                  attivita'</button>
      </form>
</div>