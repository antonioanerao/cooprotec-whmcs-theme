<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>

    {include file="$template/includes/head.tpl"}

    {$headoutput}

    <!-- Bootstrap -->
    <link href="https://cooprotec.com.br/hospedagem/templates/six/css/custom-bootstrap.css  " rel="stylesheet">
    <link href="https://www.cooprotec.com.br/wp-content/themes/cooprotec_novo/style.css" rel="stylesheet">

    <!-- Google Web Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic" rel="stylesheet" type="text/css">

    <!-- Template CSS Files  -->
    <link href="https://www.cooprotec.com.br/wp-content/themes/cooprotec_novo/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <link href="https://cooprotec.com.br/hospedagem/templates/six/css/cooprotec.css  " rel="stylesheet">
    <link href="https://www.cooprotec.com.br/wp-content/themes/cooprotec_novo/css/responsive.css" rel="stylesheet">
    <link rel="icon" href="images/favicon.png">

</head>
<body>

{$headeroutput}

<!-- Top Bar Starts -->
<div class="top-bar">
    <!-- Nested Container Starts -->
    <div class="container clearfix text-center-xs">
        <ul class="list-unstyled list-inline pull-left-lg pull-left-md pull-left-sm animation">
            <li><a href="https://www.facebook.com/cooprotecac"><i class="fa fa-facebook"></i></a></li>
        </ul>
        <p class="pull-right-lg pull-right-md pull-right-sm text-right-lg text-right-md text-right-sm text-light">
            Cooprotec. A Cooperativa de tecnologia pioneira do estado do Acre
        </p>
    </div>
    <!-- Nested Container Ends -->
</div>

<header class="main-header">
    <!-- Nested Container Starts -->
    <div class="container text-center-xs">
        <!-- Nested Row Starts -->
        <div class="row">
            <!-- Logo Starts -->
            <div class="col-lg-3 col-sm-4 col-xs-12">
                <a href="https://www.cooprotec.com.br"><img src="https://www.cooprotec.com.br/wp-content/themes/cooprotec_novo/images/cooprotec_logo.png" alt="Cooprotec" class="img-responsive img-center-xs logo" width="80%"></a>
            </div>
            <!-- Logo Ends -->
            <!-- Opening Hours Starts -->
            <div class="col-sm-4 col-xs-12 col-lg-offset-2 hidden-xs">
                <div class="clearfix">
                    <i class="fa fa-clock-o pull-left-lg pull-left-md pull-left-sm circle"></i>
                    <h6 class="text-spl-color text-medium">Funcionamento</h6>
                    <p class="text-light"><em>Segunda a Sexta, das 08:00h às 18:00h</em></p>
                </div>
            </div>
            <!-- Opening Hours Ends -->
            <!-- Contact Number Starts -->
            <div class="col-lg-3 col-sm-4 col-xs-12 hidden-xs">
                <div class="clearfix">
                    <i class="fa fa-phone pull-left-lg pull-left-md pull-left-sm circle"></i>
                    <h6 class="text-spl-color text-medium">Número de Contato</h6>
                    <p class="text-light"><em>(68) 99944-1617</em></p>
                </div>
            </div>
            <!-- Contact Number Ends -->
        </div>
        <!-- Nested Row Ends -->
    </div>
    <!-- Nested Container Ends -->
</header>

<!-- Main Menu Starts -->

<nav id="nav" class="main-menu navbar flat">

    <!-- Nested Container Starts -->

    <div class="container">

        <!-- Nav Header Starts -->

        <div class="navbar-header">

            <button type="button" class="btn btn-navbar navbar-toggle flat animation" data-toggle="collapse" data-target=".navbar-cat-collapse">

                <span class="sr-only">Toggle Navigation</span>

                <i class="fa fa-bars"></i>

            </button>

        </div>

        <!-- Nav Header Ends -->

        <!-- Navbar Cat collapse Starts -->

        <div class="collapse navbar-collapse navbar-cat-collapse animation">

            <!-- Nav Links Starts -->

            <ul class="nav navbar-nav">

                {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
                {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}

            </ul>
            <!-- Nav Links Ends -->

        </div>

        <!-- Navbar Cat collapse Ends -->

    </div>

    <!-- Nested Container Ends -->

</nav>


{if $templatefile == 'homepage'}
    <br><br>
    <link rel="stylesheet" type="text/css" href="/hospedagem/templates/orderforms/premium_comparison/css/style.css" property="stylesheet" />
    <script>
        jQuery(document).ready(function () {
            jQuery('#btnShowSidebar').click(function () {
                if (jQuery(".product-selection-sidebar").is(":visible")) {
                    jQuery('.row-product-selection').css('left','0');
                    jQuery('.product-selection-sidebar').fadeOut();
                    jQuery('#btnShowSidebar').html('<i class="fa fa-arrow-circle-right"></i> Mostrar Menu');
                } else {
                    jQuery('.product-selection-sidebar').fadeIn();
                    jQuery('.row-product-selection').css('left','300px');
                    jQuery('#btnShowSidebar').html('<i class="fa fa-arrow-circle-left"></i> Ocultar Menu');
                }
            });
        });
    </script>

    <div class="col-xs-12">

        <div id="order-premium_comparison">
            <div class="main-container price-01">
                <div class="txt-center">
                    <h3 id="headline">
                        Escolha o melhor plano para você
                    </h3>
                    <h5 id="tagline">
                        Sem taxa de configuração
                    </h5>
                </div>
                <div id="products" class="price-table-container">
                    <ul>
                        <li id="product1">
                            <div class="price-table">
                                <div class="top-head">
                                    <div class="top-area">
                                        <h4 id="product1-name">Plano Básico</h4>
                                    </div>

                                    <div class="price-area">
                                        <div class="price" id="product1-price">
                                            <span>R$ 15,00</span>/mês
                                            <br>
                                        </div>
                                        <a href="/hospedagem/cart.php?a=add&amp;pid=2" class="order-button" id="product1-order-button">
                                            Assinar agora
                                        </a>

                                    </div>
                                </div>
                                <ul>
                                    <li id="product1-description">
                                        02 endereços de e-mail <br /><br />
                                        1 Gb de transferência mensal <br><br />
                                        1 Gb de espaço em disco <br><br />
                                        1 domínio <br><br />
                                        1 subdomínio <br><br />
                                        1 conta FTP <br><br />
                                        1 banco de dados MySQL
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li id="product2">
                            <div class="price-table">
                                <div class="top-head">
                                    <div class="top-area">
                                        <h4 id="product2-name">Plano Intermediário</h4>
                                    </div>

                                    <div class="price-area">
                                        <div class="price" id="product2-price">
                                            <span>R$ 27,00</span>/mês
                                            <br>
                                        </div>
                                        <a href="/hospedagem/cart.php?a=add&amp;pid=3" class="order-button" id="product2-order-button">
                                            Assinar agora
                                        </a>

                                    </div>
                                </div>
                                <ul>
                                    <li id="product2-description">
                                        10 endereços de e-mail <br><br />
                                        5 Gb de transferência mensal <br><br />
                                        2 Gb de espaço em disco <br><br />
                                        2 domínios <br><br />
                                        Subdomínios <strong>ilimitados</strong> <br><br />
                                        2 conta FTP <br><br />
                                        2 banco de dados MySQL
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li id="product3">
                            <div class="price-table">
                                <div class="top-head">
                                    <div class="top-area">
                                        <h4 id="product3-name">Plano Avançado</h4>
                                    </div>

                                    <div class="price-area">
                                        <div class="price" id="product3-price">
                                            <span>R$ 35,00</span>/mês
                                            <br>
                                        </div>
                                        <a href="/hospedagem/cart.php?a=add&amp;pid=1" class="order-button" id="product3-order-button">
                                            Assinar agora
                                        </a>

                                    </div>
                                </div>
                                <ul>
                                    <li id="product3-description">
                                        E-mails <strong>ilimitados</strong> <br><br />
                                        10 Gb de transferência mensal <br><br />
                                        5 Gb de espaço em disco <br><br />
                                        10 domínios <br><br />
                                        Subdomínios <strong>ilimitados</strong> <br><br />
                                        Contas FTP <strong>ilimitadas</strong> <br><br />
                                        Bancos de Dados MySQL <strong>ilimitados</strong> <br>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </div>

{/if}

{include file="$template/includes/verifyemail.tpl"}

{if $templatefile != 'homepage'}
<section id="main-body">
    <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
        <div class="row">

            {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                {if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
                    <div class="col-md-9 pull-md-right">
                        {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                    </div>
                {/if}
                <div class="col-md-3 pull-md-left sidebar">
                    {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                </div>
            {/if}
            <!-- Container for main page display content -->
            <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
                {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
                    {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                {/if}
{/if}