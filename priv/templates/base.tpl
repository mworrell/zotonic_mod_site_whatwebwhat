<!DOCTYPE html>
<html lang="{{ z_language|default:'en'|escape }}">
<head>
	<meta charset="utf-8" />
	<title>{% block title %}{{ id.title }} &mdash; {{ m.site.title }}{% endblock %}</title>

	<link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="author" content="Marc Worrell" />

	{% all include "_html_head.tpl" %}

    {% lib
         "css/bootstrap.css"
         "css/jquery.loadmask.css" 
         "css/z.growl.css" 
         "css/z.modal.css" 
         "css/theme.css" 
          minify
          media='screen'
    %}
    {% lib
          "font-awesome-4/css/font-awesome.css"
          async
          minify
    %}

	{% block html_head_extra %}{% endblock %}
</head>

<body class="{% block page_class %}{% endblock %}" data-cotonic-pathname-search="{% cotonic_pathname_search %}">

<div class="container">
	{% block above %}
		{% if m.rsc.main_menu.is_published and m.rsc.main_menu.menu %}
			{% include "_navbar.tpl" %}
		{% else %}
			<div class="header clearfix">
				{% block nav_home %}
					<a href="/">&lt; {{ m.site.title }}</a>
				{% endblock %}

				{% block nav_search %}
				<form class="form-inline pull-right search hidden-xs" method="get" action="{% url search %}">
					<div class="form-group">
						<input class="form-control" type="text" name="qs" value="" placeholder="{_ Search site _}" />
					</div>
					<button class="btn btn-default" type="submit">{_ Search _}</button>
				</form>
				<a class="pull-right visible-xs" href="{% url search %}">{_ Search _} &gt;</a>
				{% endblock %}
			</div>
		{% endif %}
	{% endblock %}

	<div class="row content" {% include "_language_attrs.tpl" language=z_language %}>
		<div class="col-md-6 title-summary clearfix">
			{% block main_title %}
				{% include "_page_title.tpl" %}
			{% endblock %}
		</div>

		<div class="col-md-6 main">
			{% block content_area %}
				{% block content %}
				{% endblock %}
				{% block below_body %}
				{% endblock %}
				{% block related %}
				{% endblock %}
				{% block meta %}
				{% endblock %}
			{% endblock %}
		</div>
	</div>

	{% block below %}
	{% endblock %}
</div>
{% include "_footer.tpl" %}

{% include "_js_include.tpl" %}
{% script %}

</body>
</html>
