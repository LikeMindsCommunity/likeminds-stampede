resource "aws_ecr_lifecycle_policy" "tfer--likeminds-authentication-repo" {
  policy = <<POLICY
{
  "rules": [
    {
      "action": {
        "type": "expire"
      },
      "description": "latest 5 Images",
      "rulePriority": 1,
      "selection": {
        "countNumber": 5,
        "countType": "imageCountMoreThan",
        "tagStatus": "any"
      }
    }
  ]
}
POLICY

  repository = "likeminds-authentication-repo"
}

resource "aws_ecr_lifecycle_policy" "tfer--likeminds-subscription-skulk-celery-repo" {
  policy = <<POLICY
{\"rules\":[{\"action\":{\"type\":\"expire\"},\"description\":\"latest 5 Images\\",\"rulePriority\":1,\"selection\":{\"countNumber\":5,\"countType\":\"imageCountMoreThan\",\"tagStatus\":\"any\"}}]}
POLICY

  repository = "likeminds-subscription-skulk-celery-repo"
}

resource "aws_ecr_lifecycle_policy" "tfer--likeminds-subscription-skulk-rabbitmq-repo" {
  policy = <<POLICY
{
  "rules": [
    {
      "action": {
        "type": "expire"
      },
      "description": "latest 5 Images",
      "rulePriority": 1,
      "selection": {
        "countNumber": 5,
        "countType": "imageCountMoreThan",
        "tagStatus": "any"
      }
    }
  ]
}
POLICY

  repository = "likeminds-subscription-skulk-rabbitmq-repo"
}

resource "aws_ecr_lifecycle_policy" "tfer--likeminds-subscription-skulk-repo" {
  policy = <<POLICY
{
  "rules": [
    {
      "action": {
        "type": "expire"
      },
      "description": "latest 5 Images",
      "rulePriority": 1,
      "selection": {
        "countNumber": 5,
        "countType": "imageCountMoreThan",
        "tagStatus": "any"
      }
    }
  ]
}
POLICY

  repository = "likeminds-subscription-skulk-repo"
}

resource "aws_ecr_lifecycle_policy" "tfer--likeminds-swarm-repo" {
  policy = <<POLICY
{
  "rules": [
    {
      "action": {
        "type": "expire"
      },
      "description": "latest 5 Images",
      "rulePriority": 1,
      "selection": {
        "countNumber": 5,
        "countType": "imageCountMoreThan",
        "tagStatus": "any"
      }
    }
  ]
}
POLICY

  repository = "likeminds-swarm-repo"
}

resource "aws_ecr_lifecycle_policy" "tfer--likeminds-togther-caravan-celery-repo" {
  policy = <<POLICY
{
  "rules": [
    {
      "action": {
        "type": "expire"
      },
      "description": "latest 5 Images",
      "rulePriority": 1,
      "selection": {
        "countNumber": 5,
        "countType": "imageCountMoreThan",
        "tagStatus": "any"
      }
    }
  ]
}
POLICY

  repository = "likeminds-togther-caravan-celery-repo"
}

resource "aws_ecr_lifecycle_policy" "tfer--likeminds-togther-caravan-rabbitmq-repo" {
  policy = <<POLICY
{
  "rules": [
    {
      "action": {
        "type": "expire"
      },
      "description": "latest 5 Images",
      "rulePriority": 1,
      "selection": {
        "countNumber": 5,
        "countType": "imageCountMoreThan",
        "tagStatus": "any"
      }
    }
  ]
}
POLICY

  repository = "likeminds-togther-caravan-rabbitmq-repo"
}

resource "aws_ecr_lifecycle_policy" "tfer--likeminds-togther-caravan-repo" {
  policy = <<POLICY
{
  "rules": [
    {
      "action": {
        "type": "expire"
      },
      "description": "latest 5 Images",
      "rulePriority": 1,
      "selection": {
        "countNumber": 5,
        "countType": "imageCountMoreThan",
        "tagStatus": "any"
      }
    }
  ]
}
POLICY

  repository = "likeminds-togther-caravan-repo"
}
