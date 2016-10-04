
        </div><!-- /.main-content -->
        {if $secondarySidebar->hasChildren()}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
            </div>
        {/if}
    </div>
    <div class="clearfix"></div>
</section>

<section id="footer">

    <p>ÊãÇãí ÍŞæŞ ãÇÏí æ ãÚäæí ãÊÚáŞ Èå {$companyname} ãí ÈÇÔÏ .</p>

</section>

<script defer src="{$BASE_PATH_JS}/bootstrap.min.js"></script>
<script defer src="{$BASE_PATH_JS}/jquery-ui.min.js"></script>
<script type="text/javascript">
    var csrfToken = '{$token}';
</script>
<script defer src="{$WEB_ROOT}/templates/{$template}/js/whmcs.js"></script>

{$footeroutput}

</body>
</html>
