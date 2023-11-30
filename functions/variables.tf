variable "region" {
  default = "ca-central-1"
}
variable "cloud_users" {
  type = string
  default = "andrew:ken:faraz:mutsumi:peter:steve:braja"

}
variable "bucket" {
  default = "sonic-media"

}
variable "forlookup" {
  default = {
    keya: "value1",
    keyb: "value2",
    keyb: "value3",
  }
}

variable "media" {
  type = set(string)
  default = [
    "/media/tails.jpg",
    "/media/eggman.jpg",
    "/media/ultrasonic.jpg",
    "/media/knuckles.jpg",
    "/media/shadow.jpg",
  ]

}
variable "sf" {
  type = list
  default = [
    "ryu",
    "ken",
    "akuma",
    "seth",
    "zangief",
    "poison",
    "gen",
    "oni",
    "thawk",
    "fang",
    "rashid",
    "birdie",
    "sagat",
    "bison",
    "cammy",
    "chun-li",
    "balrog",
    "cody",
    "rolento",
    "ibuki"

  ]
}

