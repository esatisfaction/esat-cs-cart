
{if $addons.esatisfaction.tracking == 'Y'}

<div class="esatisfaction"></div>
<br />

<script type="text/javascript">
	var _esatisf = _esatisf || [];
	var token = '{"https://www.e-satisfaction.gr/miniquestionnaire/genkey.php?site_auth=`$addons.esatisfaction.id_key`"|file_get_contents}';
	_esatisf.push(['_responder', '{$order_info.order_id}']);
	_esatisf.push(['_token', token]);
	_esatisf.push(['_showQuestionnaire', '.esatisfaction']);
</script>

{/if}