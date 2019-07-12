# terratest-docker

> Built for CI environments

Dockerfile with [terraform](https://www.terraform.io/), [terratest](https://github.com/gruntwork-io/terratest), [stretchr/testify](https://github.com/stretchr/testify) and [awsweeper](https://github.com/cloudetc/awsweeper)

Useful for running running tests based on terratest framework in CI/CD environments

## Build and Publish the image

```
$ docker build -t sudokar/terratest .
$ docker push sudokar/terratest
```

## Author

* sudokar
