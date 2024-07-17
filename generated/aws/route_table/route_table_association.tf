resource "aws_route_table_association" "tfer--subnet-0446c1b26325eba62" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0e6622990b798e132_id}"
  subnet_id      = "subnet-0446c1b26325eba62"
}

resource "aws_route_table_association" "tfer--subnet-048ec02800b9dc5fd" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0e6622990b798e132_id}"
  subnet_id      = "subnet-048ec02800b9dc5fd"
}

resource "aws_route_table_association" "tfer--subnet-050da7da4ae9b7bbc" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0a0616ad99dc57232_id}"
  subnet_id      = "subnet-050da7da4ae9b7bbc"
}

resource "aws_route_table_association" "tfer--subnet-0b772e5ead9e9f284" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0a0616ad99dc57232_id}"
  subnet_id      = "subnet-0b772e5ead9e9f284"
}

resource "aws_route_table_association" "tfer--subnet-0df606c9f98d8cb11" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0e6622990b798e132_id}"
  subnet_id      = "subnet-0df606c9f98d8cb11"
}

resource "aws_route_table_association" "tfer--subnet-0f517aee687340213" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0e6622990b798e132_id}"
  subnet_id      = "subnet-0f517aee687340213"
}
