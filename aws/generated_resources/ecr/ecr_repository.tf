resource "aws_ecr_repository" "tfer--likeminds-authentication-repo" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "true"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "likeminds-authentication-repo"
}

resource "aws_ecr_repository" "tfer--likeminds-subscription-skulk-celery-repo" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "true"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "likeminds-subscription-skulk-celery-repo"
}

resource "aws_ecr_repository" "tfer--likeminds-subscription-skulk-rabbitmq-repo" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "true"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "likeminds-subscription-skulk-rabbitmq-repo"
}

resource "aws_ecr_repository" "tfer--likeminds-subscription-skulk-repo" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "true"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "likeminds-subscription-skulk-repo"
}

resource "aws_ecr_repository" "tfer--likeminds-swarm-asynqmon-repo" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "likeminds-swarm-asynqmon-repo"
}

resource "aws_ecr_repository" "tfer--likeminds-swarm-repo" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "true"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "likeminds-swarm-repo"
}

resource "aws_ecr_repository" "tfer--likeminds-swarm-worker-repo" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "true"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "likeminds-swarm-worker-repo"
}

resource "aws_ecr_repository" "tfer--likeminds-togther-caravan-celery-es-repo" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "likeminds-togther-caravan-celery-es-repo"
}

resource "aws_ecr_repository" "tfer--likeminds-togther-caravan-celery-repo" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "true"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "likeminds-togther-caravan-celery-repo"
}

resource "aws_ecr_repository" "tfer--likeminds-togther-caravan-rabbitmq-repo" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "true"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "likeminds-togther-caravan-rabbitmq-repo"
}

resource "aws_ecr_repository" "tfer--likeminds-togther-caravan-repo" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "true"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "likeminds-togther-caravan-repo"
}
