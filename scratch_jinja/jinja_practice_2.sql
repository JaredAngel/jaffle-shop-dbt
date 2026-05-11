{%- set foods = ['radish', 'cucumber', 'chicken nugget', 'avocado'] -%}

{% for food in foods %}
    {%- set ns = namespace(food_type='') -%}

    {%- if food == 'chicken nugget' -%}
        {%- set ns.food_type = 'snack' -%}
    {%- else -%}
        {%- set ns.food_type = 'vegetable' -%}
    {%- endif -%}

    The delicious {{ food }} is my favorite {{ ns.food_type }}
{% endfor %}