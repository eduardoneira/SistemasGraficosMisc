function PhongShaderHandler(vertex_shader_src,fragment_shader_src) {
  this.vertexShaderSrc = vertex_shader_src;
  this.fragmentShaderSrc = fragment_shader_src;
  
  this.glProgram = createGLProgram(this.vertexShaderSrc,this.fragmentShaderSrc);

  // Uniforms
  this.pMatrixUniform = gl.getUniformLocation(this.glProgram, "uPMatrix");
  this.vmMatrixUniform = gl.getUniformLocation(this.glProgram, "uVMMatrix");
  this.nMatrixUniform = gl.getUniformLocation(this.glProgram, "uNMatrix");

  this.lightPositions = gl.getUniformLocation(this.glProgram,"uLightPositions")
  this.cameraPosition = gl.getUniformLocation(this.glProgram, "uCameraPosition");

  this.lightAmbientIntensity = gl.getUniformLocation(this.glProgram, "uLightAmbientIntensity");  
  this.lightDiffuseIntensity = gl.getUniformLocation(this.glProgram, "uLightDiffuseIntensity");  
  this.lightSpecularIntensity = gl.getUniformLocation(this.glProgram, "uLightSpecularIntensity");  

  this.materialAmbientRefl = gl.getUniformLocation(this.glProgram, "uMaterialAmbientRefl");
  this.materialDiffuseRefl = gl.getUniformLocation(this.glProgram, "uMaterialDiffuseRefl");
  this.materialSpecularRefl = gl.getUniformLocation(this.glProgram, "uMaterialSpecularRefl");
  this.materialShininess = gl.getUniformLocation(this.glProgram, "uMaterialShininess");

  this.samplerUniform = gl.getUniformLocation(this.glProgram, "uSampler");
  
  // Attributes
  this.vertexPositionAttribute = gl.getAttribLocation(this.glProgram, "aVertexPosition");
  gl.enableVertexAttribArray(this.vertexPositionAttribute);

  this.textureCoordAttribute = gl.getAttribLocation(this.glProgram, "aTextureCoord");
  gl.enableVertexAttribArray(this.textureCoordAttribute);

  this.vertexNormalAttribute = gl.getAttribLocation(this.glProgram, "aVertexNormal");
  gl.enableVertexAttribArray(this.vertexNormalAttribute);

  this.activateShader = function() {
    gl.useProgram(this.glProgram);
  }
}