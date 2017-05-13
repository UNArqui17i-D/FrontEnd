#!/usr/bin/env sh

./../rancher-compose --project-name jarkko-coffee \
    --url http://192.168.99.100:8080/v1/projects/1a5 \
    --access-key 722753EBA0914EF5B633 \
    --secret-key R5HqTteFE9gQdEYCaMLLA9x1FJwgbs19V82FXXY5 \
    -f docker-compose.yml \
    --verbose up \
    -d --force-upgrade \
    --confirm-upgrade