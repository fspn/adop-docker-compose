source env.config.sh
source platform.secrets.sh
export CUSTOM_NETWORK_NAME=TEST
docker network create $CUSTOM_NETWORK_NAME
export INITIAL_ADMIN_PASSWORD=$INITIAL_ADMIN_PASSWORD_PLAIN
export JENKINS_PWD=$INITIAL_ADMIN_PASSWORD_PLAIN
export GERRIT_PWD=$INITIAL_ADMIN_PASSWORD_PLAIN
docker-compose -f docker-compose.yml -f compose/elk.yml  up -d

