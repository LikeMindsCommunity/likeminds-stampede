resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_os-caravan-beta-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "os-caravan-beta.staging.likeminds"
  records                          = ["vpc-likeminds-staging-os-caravan-7f573ruveggrrk72ie7dhlczbm.ap-south-1.es.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_os-caravan-beta-kibana-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "os-caravan-beta-kibana.staging.likeminds"
  records                          = ["vpc-likeminds-staging-os-caravan-7f573ruveggrrk72ie7dhlczbm.ap-south-1.es.amazonaws.com/_plugin/kibana/"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_os-skulk-beta-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "os-skulk-beta.staging.likeminds"
  records                          = ["vpc-likeminds-staging-os-skulk-6b3snky4bems5koktepqjblzyi.ap-south-1.es.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_os-skulk-beta-kibana-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "os-skulk-beta-kibana.staging.likeminds"
  records                          = ["vpc-likeminds-staging-os-skulk-6b3snky4bems5koktepqjblzyi.ap-south-1.es.amazonaws.com/_plugin/kibana/"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_os-swarm-beta-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "os-swarm-beta.staging.likeminds"
  records                          = ["vpc-likeminds-staging-os-swarm-mbcjfl2llxkslrdqcj374m7phi.ap-south-1.es.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_os-swarm-beta-kibana-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "os-swarm-beta-kibana.staging.likeminds"
  records                          = ["vpc-likeminds-staging-os-swarm-mbcjfl2llxkslrdqcj374m7phi.ap-south-1.es.amazonaws.com/_plugin/kibana/"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_rds-caravan-beta-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "rds-caravan-beta.staging.likeminds"
  records                          = ["likeminds-staging-caravan-rds.c9cq002q0llt.ap-south-1.rds.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_rds-caravan-beta-reader-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "rds-caravan-beta-reader.staging.likeminds"
  records                          = ["likeminds-staging-caravan-reader.c9cq002q0llt.ap-south-1.rds.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_rds-growth-hacks-beta-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "rds-growth-hacks-beta.staging.likeminds"
  records                          = ["likeminds-staging-growth-hacks-rds.c9cq002q0llt.ap-south-1.rds.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_rds-skulk-beta-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "rds-skulk-beta.staging.likeminds"
  records                          = ["likeminds-staging-skulk-rds.c9cq002q0llt.ap-south-1.rds.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_redis-caravan-beta-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "redis-caravan-beta.staging.likeminds"
  records                          = ["likeminds-staging-caravan-redis.bbulis.ng.0001.aps1.cache.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_redis-caravan-beta-reader-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "redis-caravan-beta-reader.staging.likeminds"
  records                          = ["likeminds-staging-caravan-redis-ro.bbulis.ng.0001.aps1.cache.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_redis-kettle-beta-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "redis-kettle-beta.staging.likeminds"
  records                          = ["likeminds-staging-kettle-redis.bbulis.ng.0001.aps1.cache.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_redis-kettle-beta-reader-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "redis-kettle-beta-reader.staging.likeminds"
  records                          = ["likeminds-staging-kettle-redis-ro.bbulis.ng.0001.aps1.cache.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_redis-swarm-beta-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "redis-swarm-beta.staging.likeminds"
  records                          = ["likeminds-staging-swarm-redis.bbulis.ng.0001.aps1.cache.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_redis-swarm-beta-reader-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "redis-swarm-beta-reader.staging.likeminds"
  records                          = ["likeminds-staging-swarm-redis-ro.bbulis.ng.0001.aps1.cache.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_redis-swarm-worker-beta-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "redis-swarm-worker-beta.staging.likeminds"
  records                          = ["likeminds-staging-swarm-worker-redis.bbulis.ng.0001.aps1.cache.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_redis-swarm-worker-beta-reader-002E-staging-002E-likeminds-002E-_CNAME_" {
  multivalue_answer_routing_policy = "false"
  name                             = "redis-swarm-worker-beta-reader.staging.likeminds"
  records                          = ["likeminds-staging-swarm-worker-redis-ro.bbulis.ng.0001.aps1.cache.amazonaws.com"]
  ttl                              = "60"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds-002E-_NS_" {
  multivalue_answer_routing_policy = "false"
  name                             = "staging.likeminds"
  records                          = ["ns-0.awsdns-00.com.", "ns-1024.awsdns-00.org.", "ns-1536.awsdns-00.co.uk.", "ns-512.awsdns-00.net."]
  ttl                              = "172800"
  type                             = "NS"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}

resource "aws_route53_record" "tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds-002E-_SOA_" {
  multivalue_answer_routing_policy = "false"
  name                             = "staging.likeminds"
  records                          = ["ns-1536.awsdns-00.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl                              = "900"
  type                             = "SOA"
  zone_id                          = "${aws_route53_zone.tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds.zone_id}"
}
