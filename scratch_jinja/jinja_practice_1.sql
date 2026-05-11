{# Setting variables #}
{% set temperture = 60.0 %}
    On a day like this, I especially like
{# IF statement syntax #}
{% if temperture > 70 %}
a refreshing lemon sorbet.

{% else %}
a decadent chocolate cake.
{% endif %}

{# FOR statement syntax #}
{% for j in range(26) %}
    SELECT {{ j }} AS number {% IF NOT loop.last %} UNION ALL {% endif %}
{% endfor %}

{# Concatenating strings and set variables #}
{% set cool_string = 'Wow cool beans!' %}
{% set my_second_cool_string = 'This is jinja!' %}
{% set my_fav_num = 26 %}
{{ cool_string }} {{ my_second_cool_string}} I want to write jinja for {{ my_fav_num }} years!

{# Set lists and iteration #}
{% set animals = ['lemur', 'dingo', 'rhino', 'dog'] %}
{{ animals[0]}}
{{ animals[1]}}
{{ animals[2]}}
{{ animals[3]}}

{% for animal in animals %}
    My favorite animal is the {{ animal }}    
{% endfor %}
