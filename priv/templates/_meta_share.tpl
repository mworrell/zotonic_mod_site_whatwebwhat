{% if id and id.is_visible %}
<span class="share-button">
	<a id="{{ #share }}" href="#" title="{_ Share this page _}">{% image "lib/images/noun/share-pd.png" mediaclass="www-meta-icon" %} {_ Share this page _}</a>
</span>
{% wire id=#share
		action={alert text="Hello"}
		action={dialog_open
			title=_"Share this page"
			template="_dialog_share_page.tpl" id=id
		}
%}
{% endif %}