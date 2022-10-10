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

            <h2>Gestione testo di notifica al cittadino dopo conclusione procedimento</h2>

            <hr>

            <br>
           

            <div class='row'>
                 
                  <div class="alert alert-info">Inserire testo email per comunicazione al cittadino</div>
                  <div class="col-sm-4">
                        <label>Messaggio</label>
                  </div>
                  <div class="col-sm-4">
                        <p> <textarea name='message_notificaCittadino' value='message_notificaCittadino' class='form-control' rows="4"></textarea></p>
                  </div>

            </div>
            <br>

            <button class='btn btn-small btn-primary' type='submit' name='outcome' value='Complete'>Completa
                  attivita'</button>
      </form>
</div>