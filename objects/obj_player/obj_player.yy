{
  "$GMObject":"",
  "%Name":"obj_player",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_xp_drop","path":"objects/obj_xp_drop/obj_xp_drop.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":1,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":2,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":88,"eventType":9,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":72,"eventType":9,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_player",
  "overriddenProperties":[],
  "parent":{
    "name":"player",
    "path":"folders/Objects/player.yy",
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
    {"$GMObjectProperty":"v1","%Name":"move_speed","filters":[],"listItems":[],"multiselect":false,"name":"move_speed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"4","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"direction_facing","filters":[],"listItems":[],"multiselect":false,"name":"direction_facing","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"hp","filters":[],"listItems":[],"multiselect":false,"name":"hp","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"100","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"damage","filters":[],"listItems":[],"multiselect":false,"name":"damage","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"hp_max","filters":[],"listItems":[],"multiselect":false,"name":"hp_max","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"hp","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"hp_regen","filters":[],"listItems":[],"multiselect":false,"name":"hp_regen","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"hasMelee","filters":[],"listItems":[],"multiselect":false,"name":"hasMelee","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"True","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"hasRanged","filters":[],"listItems":[],"multiselect":false,"name":"hasRanged","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"attackspeed_melee","filters":[],"listItems":[],"multiselect":false,"name":"attackspeed_melee","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"45","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"attackdmg_melee","filters":[],"listItems":[],"multiselect":false,"name":"attackdmg_melee","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"5","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"attackrange_melee","filters":[],"listItems":[],"multiselect":false,"name":"attackrange_melee","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"4","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"attackspeed_ranged","filters":[],"listItems":[],"multiselect":false,"name":"attackspeed_ranged","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"120","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"attackdmg_ranged","filters":[],"listItems":[],"multiselect":false,"name":"attackdmg_ranged","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"2","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_Character_Idle_Suit",
    "path":"sprites/spr_Character_Idle_Suit/spr_Character_Idle_Suit.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}