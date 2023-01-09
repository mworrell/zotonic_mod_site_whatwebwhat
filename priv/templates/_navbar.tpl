
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">{_ Toggle navigation _}</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" href="/" title="{_ visit site _}">
                {{ m.site.title }}
            </a>
        </div>
        
        <div class="navbar-collapse collapse">
            {% menu menu_id=menu_id id=id maxdepth=2 template="_menu_bs3.tpl" class="nav navbar-nav" %}

            {% block search %}
                <form class="navbar-right navbar-form form-inline hidden-sm" method="get" action="{% url search %}">
                    <input type="text" class="search-query form-control" placeholder="Search" name="qs"/>
                </form>
            {% endblock %}
        </div>
    </div>
</div>
