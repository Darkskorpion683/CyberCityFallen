{
  "$GMObject":"",
  "%Name":"obj_terminator",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_terminator",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_base_robot","path":"objects/obj_base_robot/obj_base_robot.yy",},"propertyId":{"name":"hsp","path":"objects/obj_base_robot/obj_base_robot.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":".5",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_base_robot","path":"objects/obj_base_robot/obj_base_robot.yy",},"propertyId":{"name":"damage","path":"objects/obj_base_robot/obj_base_robot.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"25",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_base_robot","path":"objects/obj_base_robot/obj_base_robot.yy",},"propertyId":{"name":"hp","path":"objects/obj_base_robot/obj_base_robot.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"100",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_base_robot","path":"objects/obj_base_robot/obj_base_robot.yy",},"propertyId":{"name":"objectType","path":"objects/obj_base_robot/obj_base_robot.yy",},"resource":{"name":"obj_terminator","path":"objects/obj_terminator/obj_terminator.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"obj_terminator",},
  ],
  "parent":{
    "name":"enemies",
    "path":"folders/Objects/enemies.yy",
  },
  "parentObjectId":{
    "name":"obj_base_robot",
    "path":"objects/obj_base_robot/obj_base_robot.yy",
  },
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
    {"$GMObjectProperty":"v1","%Name":"projectile_range","filters":[],"listItems":[],"multiselect":false,"name":"projectile_range","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"150","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"shoot_cooldown","filters":[],"listItems":[],"multiselect":false,"name":"shoot_cooldown","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"500","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_terminator",
    "path":"sprites/spr_terminator/spr_terminator.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}