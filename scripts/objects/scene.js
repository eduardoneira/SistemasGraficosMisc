function Scene() {
    var light = new Light([0.5, 0.5, 0.5],[-10.0, 10.0, -10.0]);

    var floor = new Plane(100,
                          100,
                          textures["floor"],
                          basicShaderHandler,
                          light,
                          [0.1, 0.1, 0.1],
                          true
                         );
    floor.init();

    var cube = new Cube(10,
                        10,
                        textures["black_texture"],
                        basicShaderHandler,
                        light,
                        [0.05, 0.05, 0.05]
                       );

  this.draw = function() {
    var transformations = mat4.create();
    mat4.scale(transformations,transformations,[2.0,5.0,2.0]);
    cube.draw(transformations);

    var floor_transformations = mat4.create();
    mat4.scale(floor_transformations,floor_transformations,[200.0,1.0,200.0]);
    floor.activateShader();
    floor.draw(floor_transformations);
  }
}