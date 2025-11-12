# HTML5 3D Model Viewer

<img src="https://github.com/turboseb/html5-3dmodel-viewer/blob/master/Assets/Illustrations/icon.png" width="128"><br/>

Blank file used for the <br/> [HTML5 - 3D Model Viewer Maker](https://github.com/turboseb/html5-3dmodel-viewer)



# How was the release made
  The project is exported using godot 4.5's web export template with a [custom HTML shell](https://github.com/turboseb/html5-3dmodel-viewer-blank-project/blob/master/Assets/Export/custom-full-size.html), which preloads an integrated package at runtime
```
  198    ...
  199    setStatusMode('progress');
  200 +  engine.preloadFile('custom_scene.pck'); <=
  201    engine.startGame({
  202    ...
```

# Built in
<p align="center">
<img src="https://github.com/turboseb/html5-3dmodel-viewer/blob/master/icon.svg" width="128"> <br/> 


  
## <p align="center"> Godot Engine 4.5.stable
</p>

Godot has full support for **glTF 2.0** with both text (.gltf) and binary (.glb) formats.
This standard allows to import complex 3D scenes.<br/>
**glTF** is continuously being developed, new updates will allow more flexibility with this tool.
