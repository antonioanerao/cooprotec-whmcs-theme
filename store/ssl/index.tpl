

<link href="{$WEB_ROOT}/templates/six/store/css/style.css" rel="stylesheet">

<div class="landing-page ssl">

    <div class="hero">
        <div class="container">
            <h2>Certificado SSL</h2>
            <h3>
                Deixe seu site seguro e ganhe a confiança dos seus visitantes e clientes
            </h3>
        </div>
    </div>

    <div class="validation-levels">
        <div class="container">
            <h3>Escolha o seu nível de segurança</h3>
            <div class="row">
                <div class="col-sm-6 col-md-4"></div>
                <div class="col-sm-6 col-md-4">
                    <div class="item">
                        <h4>Validação de domínio (DV)</h4>
                        <img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/ssl-dv-icon.png">
                        <span>Segurança Básica</span>
                        <p>Emitido em minutos, ideal para blogs, sites pessoais, institucionais e pequenas lojas virtuais</p>
                        <a href="{routePath('store-ssl-certificates-dv')}" class="btn">Comprar</a>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4"></div>
            </div>
            <p><a href="#" class="show-all"><i class="fa fa-arrow-down"></i> Dúvidas sobre qual escolher?</a></p>
        </div>
    </div>

    {*{include file="$template/store/ssl/shared/nav.tpl" current=""}*}

    <div class="content-block">
        <div class="container">

            <div class="row">
                <div class="col-sm-4 col-md-3 col-sm-push-8 col-md-push-9 text-right hidden-xs">
                    <br><br>
                    <img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/ssl.png">
                </div>
                <div class="col-sm-8 col-md-9 col-sm-pull-4 col-md-pull-3">

                    <h3>O que é um Certificado SSL?</h3>

                    <div class="text-center visible-xs">
                        <img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/ssl.png">
                        <br><br>
                    </div>

                    <p>
                        Um Certificado SSL habilita a criptografia de dados na internet e permite que os seus dados sejam transmitidos de forma segura pela internet. Com o SSL, seu site poderá usar o protocolo HTTPS e irá
                        mostrar um pequeno cadeado no navegador do usuário antes do link do seu site, indicando que a conexão é segura.
                    </p>

                    <p>
                        O RapidSSL é ideal para pequenos sites, blogs, webmails, intranet e extranet, VPN e segurança de acesso remoto. O Certificado RapidSSL ativa o cadeado dos navegadores e a conexão segura 'https', garantindo um ambiente seguro para troca de informações. (256 bits)
                    </p>

                    <p>
                        Os RapidSSL Wildcard ajuda você a proteger múltiplos subdomínios com um único certificado, que será emitido para *.seudominio.com.br. Proteja os dados dos seus clientes com uma criptografia de 256-bit.
                    </p>

                </div>
            </div>

        </div>
    </div>

    <div class="standout-1">
        <div class="container browser">
            <h3>Os navegadores estão mudando. Você está preparado?</h3>
            <div class="browser-image">
                <img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/browser-warning.jpg">
            </div>
        </div>
        <div class="browser-notice">
            <div class="wrapper-container">
                <div class="wrapper">
                    <img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/padlock-x.png">
                    As páginas da Web não exibidas via HTTPS serão marcadas como "não seguras" no <strong> Google Chrome </strong>
                    e no <strong> Mozilla Firefox </strong>. O seu site é um deles?
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>

    <div class="content-block browser-msg">
        <div class="container">
            <img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/browser-usage.png">
            <span>
                Como os navegadores mais populares da atualidade, essa mudança afeta certa de 70% do tráfego global de internet.
                Outros navegadores tendem a seguir o mesmo caminho.
            </span>
        </div>
    </div>

    <div class="content-block detailed-info" id="sslDetail">
        <div class="container">

            <div class="panel">
              <div class="panel-heading">
                <h4 data-toggle="collapse" data-parent="#accordion" href="#collapseAllCerts" class="panel-title expand">
                   <span class="arrow"><i class="fa fa-chevron-right"></i></span>
                  <a href="#">Veja todos os certificados</a>
                </h4>
              </div>
              <div id="collapseAllCerts" class="panel-collapse collapse">
                <div class="panel-body">

                    {include file="$template/store/ssl/shared/currency-chooser.tpl"}

                    <ul class="ssl-certs-all">
                        {if count($certificates) > 0}
                            {foreach $certificates as $type => $products}
                                {foreach $products as $product}
                                    <li>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <h4>{$product->name}</h4>
                                                <p>{$product->description}</p>
                                            </div>
                                            <div class="col-sm-3 col-sm-offset-1">
                                                <div class="padded-cell price">
                                                    from<br>
                                                    <strong>{$product->pricing()->best()->yearlyPrice()}</strong>
                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="padded-cell">
                                                    <form method="post" action="{routePath('store-order')}">
                                                        <input type="hidden" name="pid" value="{$product->id}">
                                                        <button type="submit" class="btn btn-success btn-block">Buy Now</button>
                                                    </form>
                                                    <a href="{routePath("store-ssl-certificates-$type")}">Learn more</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                {/foreach}
                            {/foreach}
                        {elseif $inPreview}
                            <div class="lead text-center">
                                SSL products you activate will be displayed here
                            </div>
                        {/if}
                    </ul>

                </div>
              </div>
            </div>
            <div class="panel">
              <div class="panel-heading">
                <h4 data-toggle="collapse" data-parent="#accordion" href="#collapseFaq" class="panel-title expand">
                    <span class="arrow"><i class="fa fa-chevron-right"></i></span>
                  <a href="#">FAQ's</a>
                </h4>
              </div>
              <div id="collapseFaq" class="panel-collapse collapse">
                <div class="panel-body">

                    <h4>O que é um certificado SSL?</h4>

                    <p>
                        Um Certificado SSL habilita a criptografia de dados na internet e permite que os seus dados sejam transmitidos de forma segura pela internet. Com o SSL, seu site poderá usar o protocolo HTTPS e irá mostrar um pequeno cadeado no navegador do usuário antes do link do seu site, indicando que a conexão é segura.
                    </p>

                    <h4>Por que eu preciso de um SSL?</h4>

                    <p>
                        As páginas da Web não exibidas via HTTPS serão marcadas como "não seguras" no Google Chrome e no Mozilla Firefox. Isso fará com que o seu site caia de posição em grandes sites de buscas,
                        como Google e Bing.
                    </p>

                    <h4>Quais são os diferentes tipos de SSL?</h4>

                    <p>
                        Existem 3 níveis diferentes de verificação nos quais os Certificados SSL são baseados. Domínio Validado (DV), Organização Validada (OV) e Validação Estendida (EV). A principal diferença entre os tipos de certificado está relacionada às informações que a Autoridade de Certificação, RapidSSL, GeoTrust e Symantec, exigem e validam para emitir um certificado. Os níveis mais altos de certificado exigem mais informações e geralmente são exibidos na barra do navegador. O EV SSL, por exemplo, e exibe o nome da organização aos visitantes (em verde) para gerar mais confiança.
                    </p>

                </div>
              </div>
            </div>

        </div>
    </div>

    {include file="$template/store/ssl/shared/logos.tpl"}

</div>

<script>
$(function() {
  $(".expand").on( "click", function() {
    $expand = $(this).find(">:first-child");

    if($expand.html() == '<i class="fa fa-chevron-right"></i>') {
      $expand.html('<i class="fa fa-chevron-down"></i>');
    } else {
      $expand.html('<i class="fa fa-chevron-right"></i>');
    }
  });
  $('.show-all').click(function(e) {
    e.preventDefault();
    if (!$('#collapseAllCerts').hasClass('in')) {
        $('#collapseAllCerts').collapse('show');
    }
    $('html, body').animate({
        scrollTop: $('#sslDetail').offset().top
    }, 500);
  });
});
</script>
