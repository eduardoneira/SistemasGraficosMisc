function Scene() {

  var surface_circle = new SurfaceCircle(5);
  surface_circle.discretize(0.05);

  // var cylinder = new Cylinder(40,60,textures["cylinder"],5);
  // cylinder.init();

  var loft = new Loft(undefined, undefined, textures["checker"]);
  loft.init();
  // debugger;


  this.draw = function() {
    cylinder_transformations = mat4.create();
    mat4.rotate(cylinder_transformations, cylinder_transformations, t, [0.0, 1.0, 0.0]);
    loft.draw(cylinder_transformations);
  }

}