require 'shelljs/global'
shortName = 'nodejs'
name = 'quay.io/ndelitski/nodejs'
version = '4.1'

task 'build', 'build docker image', ->
  exec "docker build -t #{name} --rm ./"

task 'push', 'push image to repository', ->
  exec "docker tag #{name} #{name}:#{version}"
  exec "docker push #{name}:#{version}"
