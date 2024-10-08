{
  "_$ver": 1,
  "_$id": "jab1li01",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$child": [
    {
      "_$id": "n9gjxcltvl",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "793cffc6-730a-4756-a658-efe98c230292",
          "_$type": "Material"
        }
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.424308,
        "g": 0.4578516,
        "b": 0.5294118
      },
      "_reflectionsIblSamples": 1024,
      "fogStart": 0,
      "fogEnd": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5
      },
      "_$comp": [
        {
          "_$type": "7bad1742-6eed-4d8d-81c0-501dc5bf03d6",
          "scriptPath": "../src/Main.ts",
          "camera": {
            "_$ref": "6jx8h8bvc6"
          },
          "scene": {
            "_$ref": "n9gjxcltvl"
          }
        }
      ],
      "_$child": [
        {
          "_$id": "6jx8h8bvc6",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -2.2394864655087465,
              "y": 1.8834588169544642,
              "z": 1.9651975613726607
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.1020819653288524,
              "w": 0.9947759910425056
            }
          },
          "orthographicVerticalSize": 20,
          "fieldOfView": 90,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.3921,
            "g": 0.5843,
            "b": 0.9294
          },
          "enableHDR": true,
          "msaa": true
        },
        {
          "_$id": "6ni3p096l5",
          "_$type": "LightSprite",
          "name": "Direction Light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 5,
              "y": 5,
              "z": 5
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.2870148152115398,
              "y": 0.24712923537558582,
              "z": 0.07690538881403641,
              "w": 0.9222988659014636
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "lightmapBakedType": 0,
              "shadowMode": 1,
              "shadowDistance": 20,
              "shadowDepthBias": 1.519,
              "shadowNormalBias": 1.236,
              "shadowNearPlane": 1.191,
              "shadowCascadesMode": 1,
              "strength": 2.259,
              "angle": 21.785,
              "maxBounces": 512
            }
          ]
        },
        {
          "_$id": "to74d73p",
          "_$type": "Sprite3D",
          "name": "Cube",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 0.8957968923951993,
              "z": 0.5073594408191155
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "castShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "91a1e876-7531-4a4e-8e52-5d61e68d40fe",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "ysky96ip",
          "_$type": "Sprite3D",
          "name": "Plane",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -1.133322834968567,
              "y": 6.273674557633058e-7,
              "z": 2.8559037446029834e-7
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -4.538386555452689e-9,
              "y": 5.164145555625055e-9,
              "z": -5.584238405020869e-9
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 100.00000000000004,
              "y": 1,
              "z": 100.00000000000001
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "eorfatkd",
          "_$type": "Sprite3D",
          "name": "Cube(1)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 0.8957968923951993,
              "z": 4.198758154539471
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "castShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "b06154e5-25f5-4fa9-8e31-1a727a5aa085",
                  "_$type": "Material"
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}