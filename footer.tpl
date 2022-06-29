
                </div><!-- /.main-content -->
                {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                    <div class="col-md-3 pull-md-left sidebar">
                        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                    </div>
                {/if}
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</section>

                <!-- Footer Top Section Starts -->
                <section class="footer-top">
                    <!-- Nested Container Starts -->
                    <div class="container text-center-xs text-lite-color">
                        <!-- Nested Row Starts -->
                        <div class="row">
                            <!-- Foot Col #1 Starts -->
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <div class="foot-info">
                                    <p>
                                        <img src="https://www.cooprotec.com.br/wp-content/themes/cooprotec_novo/images/cooprotec_logo.png" width="80%" alt="Cooprotec" class="img-responsive img-center-xs">
                                    </p>
                                    <br>
                                    <p class="text-light">
                                        <em>Cooprotec é uma cooperativa do ramo Tecnologia e é a primeira Cooperativa de Trabalho de Tecnologia do Estado do Acre, administrada por analistas de sistemas.</em>
                                    </p>
                                    <ul class="list-unstyled list-inline foot-sm-links">
                                        <li class="text-medium">Siga-nos</li>
                                        <li><a href="https://www.facebook.com/cooprotecac"><i class="fa fa-facebook animation"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Foot Col #1 Ends -->
                            <!-- Foot Col #2 Starts -->
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <h5>Contato</h5>
                                <ul class="list-unstyled foot-address-list text-light">
                                    <li class="clearfix">
                                        <i class="fa fa-map-marker"></i>
								<span>
									<strong>Bairro José Augusto, 299, </strong><br>
									Bairro José Augusto. <br>Rio Branco - Acre.
								</span>
                                    </li>
                                    <li class="clearfix">
                                        <i class="fa fa-phone"></i>
                                        <span class="text-bold">(68) 99944-1617</span>
                                    </li>
                                    <li class="clearfix">
                                        <i class="fa fa-envelope"></i>
                                        <span><a href="mailto:contato@cooprotec.com.br">contato@cooprotec.com.br</a></span>
                                    </li>
                                    <li class="clearfix">
                                        <i class="fa fa-clock-o"></i>
								<span>
									Segunda a Sexta <br>
									08:0h às 18:00h
								</span>
                                    </li>
                                </ul>
                            </div>
                            <!-- Foot Col #2 Ends -->
                            <!-- Divider Starts -->
                            <div class="col-xs-12 hidden visible-sm">
                                <p><br><br></p>
                            </div>
                            <!-- Divider Ends -->
                            <!-- Foot Col #3 Starts -->
                            <div class="col-md-6">
                                <h5>Serviços da Cooprotec</h5>
                                <div class="col-md-6">
                                    <ul class="list-unstyled foot-list-style-1 text-light">
                                        <li>Desenvolvimento de Sites</li>
                                        <li>Lojas Virtuais</li>
                                        <li>Manutenção de Sistemas</li>
                                        <li>Suporte Técnico</li>
                                        <li>Suporte a Orçamentos</li>
                                        <li>Gestão/Análise de Dados</li>
                                    </ul>
                                </div>

                                <div class="col-md-6">
                                    <ul class="list-unstyled foot-list-style-1 text-light">
                                        <li>Hospedagem de Sites</li>
                                        <li>Inteligência Empresarial</li>
                                        <li>Computação na Nuvem</li>
                                        <li>Sistemas Financeiros</li>
                                        <li>Controle de Estoque</li>
                                        <li>Segurança da Informação</li>
                                    </ul>
                                </div>

                                <div class="col-md-12">
                                    <br>
                                    <a href="https://www.cooprotec.com.br/servicos">
                                        <button class="btn btn-primary btn-block">
                                            Lista Completa
                                        </button>
                                    </a>
                                </div>

                            </div>
                            <!-- Foot Col #3 Ends -->

                        </div>
                        <!-- Nested Row Ends -->
                    </div>
                    <!-- Nested Container Ends -->
                </section>
                <!-- Footer Top Section Ends -->
                <!-- Copyright Starts -->
                <footer class="copyright">
                    <!-- Nested Container Starts -->
                    <div class="container text-center text-lite-color">
                        <em class="text-light">Cooprotec &copy; 2016 - 2017. Todos os direitos reservados.</em>
                    </div>
                    <!-- Nested Container Ends -->
                </footer>
                <!-- Copyright Ends	-->

<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">Title</h4>
            </div>
            <div class="modal-body panel-body">
                Loading...
            </div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader">
                    <i class="fa fa-circle-o-notch fa-spin"></i> Loading...
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
                <button type="button" class="btn btn-primary modal-submit">
                    Submit
                </button>
            </div>
        </div>
    </div>
</div>

{$footeroutput}

</body>
</html>
