d3 = {} unless d3?
d3.chart = {} unless d3.chart?

class d3.chart.BaseChart

    constructor: ->
        @accessors = {} unless @accessors?
        @accessors.width = 100
        @accessors.height = 100
        @accessors.margin =
            top: 0
            right: 0
            bottom: 0
            left: 0
        @buildAccessors()


    #generate getters/setters for properties in accessors
    buildAccessors: ->
        for name, accessor of @accessors
            continue if this[name]?
            do (name, accessor) =>
                this[name] = (value) ->
                    return accessor unless arguments.length
                    accessor = value
                    return this

    draw: (selection) =>
        selection.each (d, i) -> this._draw(this, d, i)

    _draw: (element, data, i) ->
        throw "_draw not implemented!"

