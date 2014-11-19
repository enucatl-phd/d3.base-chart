d3.base.chart
=============

base class for a reusable d3.js component written in coffeescript
Inspired by [dandavison](https://gist.github.com/dandavison/4152640) and
[wprater](https://gist.github.com/wprater/5682740)

Example
-------
```coffeescript
class d3.chart.MyChart extends d3.chart.BaseChart
    constructor: ->
        @accessors = {} unless @accessors?
        @accessors.x_value = "ciap"

    _draw: (element, data, i) ->
        ...draw here

base = new d3.chart.BaseChart
console.log base.accessors
my = new MyChart
console.log my.accessors
console.log my.x_value()

d3.select "body"
    .datum json
    .call my.draw
```

Depends on
----------
[D3](d3js.org)
