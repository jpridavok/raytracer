include "app://color.ms"

var Surfaces  =
{
    shiny:
    {
        diffuse: function(pos) { return Color.white; },
        specular: function(pos) { return Color.grey; },
        reflect: function(pos) { return 0.7; },
        roughness: 250
    },
    checkerboard:
    {
        diffuse: function(pos) {
            if ((Math.floor(pos.z) + Math.floor(pos.x)) % 2 !== 0)
                return Color.white;
            return Color.black;
        },
        specular: function(pos) { return Color.white; },
        reflect: function(pos) {
            if ((Math.floor(pos.z) + Math.floor(pos.x)) % 2 !== 0) {
                return 0.1;
            } else {
                return 0.7;
            }
        },
        roughness: 150
    }
}
