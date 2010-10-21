#!/bin/bash

# /Users/hideto/private/projects/sh800/spider/baixing.sh premium_capital >> /tmp/baixing.log.1.`date '+%Y-%m-%d'`
# /Users/hideto/private/projects/sh800/spider/baixing.sh capital >> /tmp/baixing.log.2.`date '+%Y-%m-%d'`
# /Users/hideto/private/projects/sh800/spider/baixing.sh premium >> /tmp/baixing.log.3.`date '+%Y-%m-%d'`

# /Users/hideto/private/projects/sh800/spider/baixing.sh premium 1 beijing
# /Users/hideto/private/projects/sh800/spider/baixing.sh premium 2 shanghai
# /Users/hideto/private/projects/sh800/spider/baixing.sh non_premium 1
# /Users/hideto/private/projects/sh800/spider/baixing.sh non_premium 2
# /Users/hideto/private/projects/sh800/spider/baixing.sh non_premium 3
ruby /Users/hideto/private/projects/sh800/spider/baixing.rb $@