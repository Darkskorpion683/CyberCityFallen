{
  "$GMObject":"",
  "%Name":"obj_base_robot",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_Slash","path":"objects/obj_Slash/obj_Slash.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":1,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
<<<<<<< HEAD
<<<<<<< HEAD
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
=======
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_aoe_weapon","path":"objects/obj_aoe_weapon/obj_aoe_weapon.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":2,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
>>>>>>> 28d44afeecbf8222c9b51ffc543a223d51d316ee
=======
>>>>>>> parent of ec64f6d (added music for game and menu, added sound for xp pickup)
  ],
  "managed":true,
  "name":"obj_base_robot",
  "overriddenProperties":[],
  "parent":{
    "name":"enemies",
    "path":"folders/Objects/enemies.yy",
  },
  "parentObjectId":null,
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"hsp","filters":[],"listItems":[],"multiselect":false,"name":"hsp","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"damage","filters":[],"listItems":[],"multiselect":false,"name":"damage","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"hp","filters":[],"listItems":[],"multiselect":false,"name":"hp","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"spawnInterval","filters":[],"listItems":[],"multiselect":false,"name":"spawnInterval","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"100","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"objectType","filters":[
        "GMObject",
      ],"listItems":[],"multiselect":false,"name":"objectType","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_base_robot","path":"objects/obj_base_robot/obj_base_robot.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_base_robot","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"beenSlashed","filters":[],"listItems":[],"multiselect":false,"name":"beenSlashed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
<<<<<<< HEAD
<<<<<<< HEAD
    {"$GMObjectProperty":"v1","%Name":"attack_cooldown","filters":[],"listItems":[],"multiselect":false,"name":"attack_cooldown","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"100","varType":1,},
=======
    {"$GMObjectProperty":"v1","%Name":"beenAOEd","filters":[],"listItems":[],"multiselect":false,"name":"beenAOEd","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
>>>>>>> 28d44afeecbf8222c9b51ffc543a223d51d316ee
=======
>>>>>>> parent of ec64f6d (added music for game and menu, added sound for xp pickup)
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_test_enemy",
    "path":"sprites/spr_test_enemy/spr_test_enemy.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}