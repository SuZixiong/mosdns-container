#!/bin/sh
#将/config.yaml内ecs-cn,ecs-us替换
sed -i 's/a.a.a.a/$ecs-cn/g' /config.yaml
sed -i 's/b.b.b.b/$ecs-us/g' /config.yaml
