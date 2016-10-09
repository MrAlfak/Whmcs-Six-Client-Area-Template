{foreach from=$announcements item=announcement}
    <div class="announcement-single">
        <h2>
            <span class="label label-default">
                {if $jdate}{$announcement.date}{else}{"M jS"|date:$announcement.timestamp}{/if}
            </span>
            <a href="{if $seofriendlyurls}{$WEB_ROOT}/announcements/{$announcement.id}/{$announcement.urlfriendlytitle}.html{else}{$smarty.server.PHP_SELF}?id={$announcement.id}{/if}">{$announcement.title}</a>
        </h2>

        <blockquote>
            <p>{if $announcement.text|strip_tags|strlen < 350}{$announcement.text}{else}{$announcement.summary}
            <a href="{if $seofriendlyurls}{$WEB_ROOT}/announcements/{$announcement.id}/{$announcement.urlfriendlytitle}.html{else}{$smarty.server.PHP_SELF}?id={$announcement.id}{/if}" class="label label-warning">{$LANG.readmore} &raquo;</a>
            {/if}</p>
        </blockquote>
    </div>

{foreachelse}

    {include file="$template/includes/alert.tpl" type="info" msg="{$LANG.noannouncements}" textcenter=true}

{/foreach}

{if $prevpage || $nextpage}

    <div class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
        <form class="form-inline" role="form">
            <div class="form-group">
                <div class="input-group">
                    {if $prevpage}
                        <span class="input-group-btn">
                            <a href="announcements.php?page={$prevpage}{if $view}&view={$view}{/if}" class="btn btn-default">&laquo; {$LANG.previouspage}</a>
                        </span>
                    {/if}
                    <input class="form-control" style="text-align: center;" value="{$LANG.page} {$pagenumber}" disabled="disabled">
                    {if $nextpage}
                        <span class="input-group-btn">
                            <a href="announcements.php?page={$nextpage}{if $view}&view={$view}{/if}" class="btn btn-default">{$LANG.nextpage} &raquo;</a>
                        </span>
                    {/if}
                </div>
            </div>
        </form>
    </div>
{/if}
