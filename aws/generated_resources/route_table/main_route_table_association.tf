resource "aws_main_route_table_association" "tfer--vpc-0e64b2f10870667a7" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-018a188a0766a42b3_id}"
  vpc_id         = "vpc-0e64b2f10870667a7"
}
