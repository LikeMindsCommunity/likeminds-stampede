resource "aws_iam_instance_profile" "tfer--TheSnapshotRole" {
  name = "TheSnapshotRole"
  path = "/"
  role = "TheSnapshotRole"
}

resource "aws_iam_instance_profile" "tfer--eks-bastion-server-role" {
  name = "eks-bastion-server-role"
  path = "/"
  role = "eks-bastion-server-role"
}

resource "aws_iam_instance_profile" "tfer--eks-fac66495-22b2-2e81-2eec-64c476bf585e" {
  name = "eks-fac66495-22b2-2e81-2eec-64c476bf585e"
  path = "/"
  role = "likeminds-EKS-Node-Group-Role-staging"
}

resource "aws_iam_instance_profile" "tfer--es-snapshot-copy-roles" {
  name = "es-snapshot-copy-roles"
  path = "/"
  role = "es-snapshot-copy-roles"
}

resource "aws_iam_instance_profile" "tfer--likeminds-staging-eks-node-group-role" {
  name = "likeminds-staging-eks-node-group-role"
  path = "/"
  role = "likeminds-staging-eks-node-group-role"
}

resource "aws_iam_instance_profile" "tfer--likeminds-staging-grafana-role" {
  name = "likeminds-staging-grafana-role"
  path = "/"
  role = "likeminds-staging-grafana-role"
}

resource "aws_iam_instance_profile" "tfer--likeminds-staging-growthack-server-role" {
  name = "likeminds-staging-growthack-server-role"
  path = "/"
  role = "likeminds-staging-growthack-server-role"
}

resource "aws_iam_instance_profile" "tfer--likeminds-staging-jenkins-role" {
  name = "likeminds-staging-jenkins-role"
  path = "/"
  role = "likeminds-staging-jenkins-role"
}

resource "aws_iam_instance_profile" "tfer--likeminds-staging-migration-server-role" {
  name = "likeminds-staging-migration-server-role"
  path = "/"
  role = "likeminds-staging-migration-server-role"
}

resource "aws_iam_instance_profile" "tfer--likeminds-staging-nginx-server-role" {
  name = "likeminds-staging-nginx-server-role"
  path = "/"
  role = "likeminds-staging-nginx-server-role"
}

resource "aws_iam_instance_profile" "tfer--likeminds-staging-openvpn-role" {
  name = "likeminds-staging-openvpn-role"
  path = "/"
  role = "likeminds-staging-openvpn-role"
}

resource "aws_iam_instance_profile" "tfer--likeminds-staging-prometheus-role" {
  name = "likeminds-staging-prometheus-role"
  path = "/"
  role = "likeminds-staging-prometheus-role"
}

resource "aws_iam_instance_profile" "tfer--likeminds-staging-redash-role" {
  name = "likeminds-staging-redash-role"
  path = "/"
  role = "likeminds-staging-redash-role"
}

resource "aws_iam_instance_profile" "tfer--likeminds-staging-wireguard-server-role" {
  name = "likeminds-staging-wireguard-server-role"
  path = "/"
  role = "likeminds-staging-wireguard-server-role"
}
