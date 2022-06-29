<div class="container">
    <div class="store-order-container">

        <form method="post" action="{routePath('store-order-addtocart')}" id="frmAddToCart">
            <input type="hidden" name="pid" value="{$product->id}">
            <input type="hidden" name="domain_type" value="" id="inputDomainType">

            <div class="row">
                <div class="col-sm-7">
                    <h2>{$product->name}</h2>

                    <p>{$product->description}</p>
                </div>
                <div class="col-sm-5">

                    <div class="payment-term">
                        <h4>Forma de pagamento</h4>
                        <select name="billingcycle" class="form-control">
                            {foreach $product->pricing()->allAvailableCycles() as $pricing}
                                <option value="{$pricing->cycle()}"{if $requestedCycle == $pricing->cycle()} selected{/if}>
                                    {if $pricing->isYearly()}
                                        {$pricing->cycleInYears()} - {$pricing->yearlyPrice()}
                                    {else}
                                        {$pricing->cycleInMonths()} - {$pricing->monthlyPrice()}
                                    {/if}
                                </option>
                            {/foreach}
                        </select>
                    </div>

                </div>
            </div>

            <br>

            <h4>Escolha um domínio</h4>

            <ul class="nav nav-tabs store-domain-tabs" role="tablist">
                {if count($domains) > 0 || !$loggedin}
                    <li role="presentation" class="active"><a href="#existing-domain" aria-controls="existing-domain" role="tab" data-toggle="tab">Domínio existente</a></li>
                {/if}
                {if $allowSubdomains}
                    <li role="presentation"><a href="#sub-domain" aria-controls="sub-domain" role="tab" data-toggle="tab">Subdomínio de um domínio existente</a></li>
                {/if}
                <li role="presentation"><a href="#custom-domain" aria-controls="custom-domain" role="tab" data-toggle="tab">Já possuo um domínio</a></li>
            </ul>
            <div class="tab-content store-domain-tab-content">
                <div role="tabpanel" class="tab-pane active" id="existing-domain">
                    {if $loggedin}
                        <div class="row">
                            <div class="col-sm-8">
                                <select class="form-control" name="existing_domain">
                                    {foreach $domains as $domain}
                                        <option value="{$domain}"{if $domain == $selectedDomain} selected="selected"{/if}>
                                            {$domain}
                                        </option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="col-sm-4">
                                <span class="domain-validation ok">
                                    <i class="fa fa-check"></i>
                                    Elegível
                                </span>
                            </div>
                        </div>
                    {else}
                        <a href="{routePath('store-order-login')}">Login</a> para adicionar o SSL a um plano existente.
                    {/if}
                </div>
                <div role="tabpanel" class="tab-pane" id="sub-domain">
                    <div class="row">
                        <div class="col-sm-8">
                            <div style="display:inline-block;width:47%;">
                                <input type="text" class="form-control subdomain-input" name="sub_domain" placeholder="Your desired subdomain"></div>
                            <div style="display:inline-block;width:2%;text-align:center;">
                                .
                            </div>
                            <div style="display:inline-block;width:47%;">
                                <select class="form-control" name="existing_sld_for_subdomain" id="existing_sld_for_subdomain">
                                    {foreach $domains as $domain}
                                        <option value="{$domain}">{$domain}</option>
                                    {/foreach}
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <span class="domain-validation subdomain-validation"></span>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="custom-domain">
                    <div class="row">
                        <div class="col-sm-8">
                            <input type="text" class="form-control domain-input" placeholder="yourdomain.com" name="custom_domain">
                        </div>
                        <div class="col-sm-4">
                            <span class="domain-validation domain-input-validation"></span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-5">
                     <a href="javascript:history.go(-1)" class="btn btn-default">
                        <i class="fa fa-arrow-left"></i>
                        Voltar
                    </a>
                </div>
                <div class="col-sm-7 text-right">
                    <button type="submit" name="continue" value="1" class="btn btn-default">
                        Continuar Comprando
                    </button>
                    <button type="submit" name="checkout" value="1" class="btn btn-primary">
                        Finalizar Compra
                        <i class="fa fa-shopping-cart"></i>
                    </button>

                </div>
            </div>

        </form>
    </div>


</div>

<script>
jQuery(document).ready(function(){

    var delay = (function(){
      var timer = 0;
      return function(callback, ms){
        clearTimeout (timer);
        timer = setTimeout(callback, ms);
      };
    })();

    jQuery('.store-order-container .subdomain-input').keyup(function() {
        delay(function(){
          jQuery('.subdomain-validation').html('<i class="fa fa-spinner fa-spin"></i> Validando...').removeClass('ok');

          jQuery('#frmAddToCart button[type="submit"]').prop('disabled', true);

          var domainName = jQuery('.subdomain-input').val() + '.' + jQuery('#existing_sld_for_subdomain').val();

          $.post('{routePath('store-order-validate')}', 'domain=' + domainName, function(data) {
              if (data.valid) {
                  jQuery('.subdomain-validation').html('<i class="fa fa-check"></i> Válido').addClass('ok');
                  jQuery('#frmAddToCart button[type="submit"]').removeProp('disabled');
              } else {
                  jQuery('.subdomain-validation').html('<i class="fa fa-times"></i> Domínio Inválido');
              }
          }, 'json');

        }, 1000 );
    });

    var delay2 = (function(){
      var timer = 0;
      return function(callback, ms){
        clearTimeout (timer);
        timer = setTimeout(callback, ms);
      };
    })();

    jQuery('.store-order-container .domain-input').keyup(function() {
        delay2(function(){
          jQuery('.domain-input-validation').html('<i class="fa fa-spinner fa-spin"></i> Validando...').removeClass('ok');
          jQuery('#frmAddToCart button[type="submit"]').prop('disabled', true);
          $.post('{routePath('store-order-validate')}', 'domain=' + jQuery('.domain-input').val(), function(data) {
            if (data.valid) {
                jQuery('.domain-input-validation').html('<i class="fa fa-check"></i> Valid').addClass('ok');
                jQuery('#frmAddToCart button[type="submit"]').removeProp('disabled');
            } else {
                jQuery('.domain-input-validation').html('<i class="fa fa-times"></i> Domínio inválido');
            }
          }, 'json');
        }, 1000 );
    });

    jQuery('.store-domain-tabs a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        var tab = jQuery(e.target).attr('aria-controls');
        jQuery('#inputDomainType').val(tab);
        if (tab == 'custom-domain' || tab == 'sub-domain') {
            var validationBlockSelector = tab == 'custom-domain' ? '.domain-input-validation' : '.subdomain-validation';
            var validationHtml = jQuery(validationBlockSelector).html();

            if (validationHtml == '<i class="fa fa-check"></i> Válido') {
                jQuery('#frmAddToCart button[type="submit"]').removeProp('disabled');
            } else {
                jQuery('#frmAddToCart button[type="submit"]').prop('disabled', true);
            }
        } else {
            {if $loggedin}
                jQuery('#frmAddToCart button[type="submit"]').removeProp('disabled');
            {else}
                jQuery('#frmAddToCart button[type="submit"]').prop('disabled', true);
            {/if}
        }
    });

    jQuery('.store-domain-tabs li').removeClass('active');
    jQuery('.store-domain-tabs li:first-child a').click();
    {if !$loggedin}
        jQuery('#frmAddToCart button[type="submit"]').prop('disabled', true);
    {/if}

    jQuery('.payment-term').find('select').change(function() {
        var cycle = jQuery('.payment-term').find('option:selected').val();
        updateUpsellDetailsOnBillingCycleChange(cycle);
    });
    updateUpsellDetailsOnBillingCycleChange(jQuery('.payment-term').find('option:selected').val());
});

function updateUpsellDetailsOnBillingCycleChange(cycle) {
    jQuery('.span-upsell').hide();
    jQuery('.span-upsell-' + cycle).show();
}
</script>
