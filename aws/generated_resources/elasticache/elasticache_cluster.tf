resource "aws_elasticache_cluster" "tfer--likeminds-staging-caravan-redis-001" {
  auto_minor_version_upgrade = "true"
  availability_zone          = "ap-south-1a"
  cluster_id                 = "likeminds-staging-caravan-redis-001"
  ip_discovery               = "ipv4"
  network_type               = "ipv4"
  parameter_group_name       = "${aws_elasticache_parameter_group.tfer--likeminds-staging-redis-parameter-group.name}"
  replication_group_id       = "${aws_elasticache_replication_group.tfer--likeminds-staging-caravan-redis.replication_group_id}"
  transit_encryption_enabled = "false"
}

resource "aws_elasticache_cluster" "tfer--likeminds-staging-kettle-redis-001" {
  auto_minor_version_upgrade = "true"
  availability_zone          = "ap-south-1a"
  cluster_id                 = "likeminds-staging-kettle-redis-001"
  ip_discovery               = "ipv4"
  network_type               = "ipv4"
  parameter_group_name       = "${aws_elasticache_parameter_group.tfer--likeminds-staging-redis-parameter-group.name}"
  replication_group_id       = "${aws_elasticache_replication_group.tfer--likeminds-staging-kettle-redis.replication_group_id}"

  tags = {
    CreatedBy = "Rapyder"
    Env       = "staging"
    Name      = "likeminds-staging-kettle-redis"
  }

  tags_all = {
    CreatedBy = "Rapyder"
    Env       = "staging"
    Name      = "likeminds-staging-kettle-redis"
  }

  transit_encryption_enabled = "false"
}

resource "aws_elasticache_cluster" "tfer--likeminds-staging-swarm-redis-001" {
  auto_minor_version_upgrade = "true"
  availability_zone          = "ap-south-1a"
  cluster_id                 = "likeminds-staging-swarm-redis-001"
  ip_discovery               = "ipv4"
  network_type               = "ipv4"
  parameter_group_name       = "${aws_elasticache_parameter_group.tfer--likeminds-staging-redis-parameter-group.name}"
  replication_group_id       = "${aws_elasticache_replication_group.tfer--likeminds-staging-swarm-redis.replication_group_id}"

  tags = {
    Name = "likeminds-staging-swarm-redis"
  }

  tags_all = {
    Name = "likeminds-staging-swarm-redis"
  }

  transit_encryption_enabled = "false"
}

resource "aws_elasticache_cluster" "tfer--likeminds-staging-swarm-worker-redis-001" {
  auto_minor_version_upgrade = "true"
  availability_zone          = "ap-south-1b"
  cluster_id                 = "likeminds-staging-swarm-worker-redis-001"
  ip_discovery               = "ipv4"
  network_type               = "ipv4"
  parameter_group_name       = "${aws_elasticache_parameter_group.tfer--likeminds-staging-redis-parameter-group.name}"
  replication_group_id       = "${aws_elasticache_replication_group.tfer--likeminds-staging-swarm-worker-redis.replication_group_id}"

  tags = {
    Name = "likeminds-staging-swarm-worker-redis"
  }

  tags_all = {
    Name = "likeminds-staging-swarm-worker-redis"
  }

  transit_encryption_enabled = "false"
}
