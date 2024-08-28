#############################################
# create ecr repo for storing docker images ###
#############################################

resource "aws_ecr_repository" "app" {
    name = "recipe-app-api-app"
    image_tag_mutability = "MUTABLE"
    force_delete = true
    image_scanning_configuration {
        # update to true when deploying prod
        scan_on_push = false
    }
}

resource "aws_ecr_repository" "proxy" {
    name = "recipe-app-api-proxy"
    image_tag_mutability = "MUTABLE"
    force_delete = true
    image_scanning_configuration {
        # update to true when deploying prod
        scan_on_push = false
    }
}
