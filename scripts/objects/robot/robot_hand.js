function RobotHand(texture, light, diffuseColor) {
  this.closed = false;

  var cube = new Cube(10,
                      10,
                      texture,
                      basicShaderHandler,
                      light,
                      diffuseColor,
                      false,
                      true);

  var cube_transformations = mat4.create();
  mat4.scale(cube_transformations,cube_transformations,[4,2,2]);

  var triangleLoftLeft = new SideBaseRobotHand( texture,
                                                light,
                                                diffuseColor);

  var left_transformations = mat4.create();
  mat4.translate(left_transformations,left_transformations,[2,0,-1]);
  mat4.rotate(left_transformations,left_transformations,degToRad(90),[0,0,1]);

  var triangleLoftRight = new SideBaseRobotHand( texture,
                                                 light,
                                                 diffuseColor);


  var right_transformations = mat4.create();
  mat4.translate(right_transformations,right_transformations,[-2,2,-1]);
  mat4.rotate(right_transformations,right_transformations,degToRad(270),[0,0,1]);

  this.close = function() {
    triangleLoftRight.close();
    triangleLoftLeft.close();
  }

  this.open = function() {
    triangleLoftRight.open();
    triangleLoftLeft.open();
  }

  this.draw = function(transformations) {
    var aux = mat4.create();
    mat4.multiply(aux, transformations, right_transformations);
    triangleLoftRight.draw(aux);

    mat4.identity(aux);
    mat4.multiply(aux, transformations, left_transformations);
    triangleLoftLeft.draw(aux);

    mat4.identity(aux);
    mat4.multiply(aux, transformations, cube_transformations);
    cube.draw(aux)
  }
}

function SideBaseRobotHand(texture, light, diffuseColor) {
  var triangleLoft = new TriangleLoft(2,
                                      texture,
                                      basicShaderHandler,
                                      light,
                                      diffuseColor);

  var line = new Line(2);
  line.travel(0.05);

  var shape = new SemiCircleSurface();
  shape.discretize(0.05);

  var loft = new Loft(shape, 
                      line, 
                      texture, 
                      0, 
                      basicShaderHandler, 
                      light, 
                      diffuseColor,
                      true);
  loft.init();

  loft.translate([1/6,-0.5,0.5]);
  loft.translate([0,-1,0]);
  loft.rotate(degToRad(45),[1.0,0.0,0.0]);
  loft.scale([5/6,1/2,1/2]);

  var cube = new Cube(10,
                      10,
                      textures["metallic_grey"],
                      basicShaderHandler,
                      light,
                      diffuseColor,
                      true);

  var hand_transformations = mat4.create();
  mat4.translate(hand_transformations, hand_transformations, [0,0,3]);
  mat4.rotate(hand_transformations,hand_transformations,degToRad(90),[0.0,1.0,0.0]);
  mat4.rotate(hand_transformations,hand_transformations,degToRad(90),[-1.0,0.0,0.0]);
  mat4.scale(hand_transformations,hand_transformations,[6,1.5,1/4]);

  var hand_angle = 0;
  var update_angle = open_hand;

  this.close = function() {
    update_angle = close_hand;
  }

  this.open = function() {
    update_angle = open_hand;
  }

  function close_hand() {
    if (hand_angle < degToRad(30)) {
      hand_angle += 0.01;
    } else {
      update_angle = open_hand;
    }

  }

  function open_hand() {
    if (hand_angle > -degToRad(15)) {
      hand_angle -= 0.01;
    } else {
      update_angle = close_hand;
    }

    if (hand_angle < -degToRad(15)) {
      hand_angle = -degToRad(15);
    }  
  }

  this.draw = function(transformations) {
    var aux = mat4.create();
    mat4.translate(aux,aux,[1.75,-1.25,1]);
    
    if (update_angle != undefined) {
      update_angle();
    }
    
    mat4.rotate(aux,aux,hand_angle,[1.0,0.0,0.0]);
    mat4.multiply(aux,aux,hand_transformations);
    mat4.multiply(aux,transformations,aux)
    cube.draw(aux);
    
    loft.draw(transformations);
    triangleLoft.draw(transformations);
  }
}