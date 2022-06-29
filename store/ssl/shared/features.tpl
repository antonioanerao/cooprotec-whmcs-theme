<div class="content-block standout-features">
    <div class="container">
        <div class="row text-center">
            {if $type == 'ev'}
                <div class="col-sm-4">
                    <h4>Green Address Bar</h4>
                    <p>Activates the green address bar and displays your company or organization name for a prominent visual security indicator.</p>
                </div>
            {elseif $type == 'ov'}
                <div class="col-sm-4">
                    <h4>Organization Validated</h4>
                    <p>With an OV SSL Certificate, the identity of the company or organization that holds the certificate is validated, providing more trust for end users.</p>
                </div>
            {else}
                <div class="col-sm-4">
                    <h4>Entrega em minutos. Proteção rápida</h4>
                    <p>A maneira mais rápida e acessível de ativar a proteção SSL para o seu site, a emissão é rápida e geralmente totalmente automatizada.</p>
                </div>
            {/if}
            <div class="col-sm-4">
                <h4>Selo de proteção e confiança</h4>
                <p>Nossos certificados SSL vêm com um selo confiável que comprovadamente aumenta a confiança dos visitantes e as conversões dos clientes.</p>
            </div>
            {if $type == 'ev'}
                <div class="col-sm-4">
                    <h4>$1.5m Warranty</h4>
                    <p>EV Certificates come with a $1.5m warranty that covers data breaches caused due to a certificate flaw.</p>
                </div>
            {elseif $type == 'ov'}
                <div class="col-sm-4">
                    <h4>$1.25m Warranty</h4>
                    <p>OV Certificates come with a $1.25m warranty that covers data breaches caused due to a certificate flaw.</p>
                </div>
            {else}
                <div class="col-sm-4">
                    <h4>Aumente seu ranking no Google</h4>
                    <p>O Google usa o SSL / HTTPS como um fator na determinação do ranking do mecanismo de pesquisa. Adicione o SSL hoje mesmo para ajudar a impulsionar seu ranking do Google!</p>
                </div>
            {/if}
        </div>
    </div>
</div>

<div class="content-block features">
    <div class="container">
        <h3>Recursos do Certificado</h3>
        <div class="row">
            <div class="col-sm-4">
                <div class="feature">
                    <i class="fa fa-certificate"></i>
                    <h4>Proteção rápida e poderosa</h4>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="feature">
                    <i class="fa fa-window-maximize"></i>
                    <h4>99.9% de compartibilidade</h4>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="feature">
                    <i class="fa fa-trophy"></i>
                    <h4>Segurança líder de mercado</h4>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="feature">
                    <i class="fa fa-lock"></i>
                    <h4>Marca reconhecida e confiável</h4>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="feature">
                    <i class="fa fa-clock-o"></i>
                    {if $type == 'ev'}
                        <h4>Issued in 2-3 Days</h4>
                    {elseif $type == 'ov'}
                        <h4>Issued in 1-2 Days</h4>
                    {else}
                        <h4>Emissão Instantânea</h4>
                    {/if}
                </div>
            </div>
            <div class="col-sm-4">
                <div class="feature">
                    <i class="fa fa-refresh"></i>
                    <h4>Reemissões Grátis</h4>
                </div>
            </div>
        </div>
    </div>
</div>
