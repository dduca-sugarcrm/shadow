#!/bin/sh
# Run: phpunit.sh servername template other-args
# Example: phpunit.sh foobarbaz.msdev.sugarcrm.com /mnt/sugar/6.6.3/ent --log-junit "/mnt/sugar/shadowed/foobarbaz.msdev.sugarcrm.com/phpunit.xml"
#/var/www_dev/htdocs/instances/one.shadow.stack.dev

# ./phpunit.sh one.shadow.stack.dev /var/www_dev/htdocs/template/one.shadow.stack.dev --log-junit "/var/www_dev/htdocs/template/tests/phpunit.xml"
# ./phpunit.sh inst2 /home/egor/work/shdw/template
# ./phpunit.sh one.shadow.stack.dev /var/www_dev/htdocs/template/one.shadow.stack.dev

export SERVER_NAME=$1
export REMOTE_ADDR=$1
export DOCUMENT_ROOT="$2"
export SHADOW_ROOT="$2"
# Drop first two args
shift
shift
#cd /var/www_dev/htdocs/instances/$SERVER_NAME/tests && php -dauto_prepend_file="/var/www_dev/htdocs/template/loader.php" /var/www_dev/htdocs/template/vendor/bin/phpunit --debug $*
cd /var/www_dev/htdocs/instances/$SERVER_NAME/tests && php -dauto_prepend_file="/var/www_dev/htdocs/template/loader.php" /var/www_dev/htdocs/template/vendor/bin/phpunit $*

#cd /var/www_dev/htdocs/instances/$SERVER_NAME/tests && php -dauto_prepend_file="/home/dmitry/www/shadow/sugarcrm/mothership/SugarShadow.php" /var/www_dev/htdocs/template/vendor/bin/phpunit $*
#cd /var/www_dev/htdocs/template/$SERVER_NAME/tests && php -dauto_prepend_file="/home/dmitry/www/shadow/sugarcrm/mothership/SugarShadow.php" phpunit.php $*
#cd /home/egor/work/shdw/instances/$SERVER_NAME/tests && php -dauto_prepend_file="/home/egor/work/shdw/template/loader.php" /home/egor/work/shdw/template/vendor/bin/phpunit $*


