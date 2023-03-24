# EB CLI for Docker

[![GitHub release](https://img.shields.io/github/tag/pH200/docker-aws-eb-cli.svg)](https://github.com/pH200/docker-aws-eb-cli/tags)
[![Get latest awsebcli action](https://github.com/pH200/docker-aws-eb-cli/actions/workflows/version.yml/badge.svg)](https://github.com/pH200/docker-aws-eb-cli/actions/workflows/version.yml)
[![Docker build and push action](https://github.com/pH200/docker-aws-eb-cli/actions/workflows/docker.yml/badge.svg)](https://github.com/pH200/docker-aws-eb-cli/actions/workflows/docker.yml)

## About

The unofficial docker container for [AWS Elastic Beanstalk CLI](https://github.com/aws/aws-elastic-beanstalk-cli). Built automatically with [GitHub Actions](https://github.com/pH200/docker-aws-eb-cli/actions).

[Docker Hub - ph200/aws-eb-cli](https://hub.docker.com/r/ph200/aws-eb-cli)

## Run

WORKDIR is `/app`

### Bash

```sh
docker run -v ~/.aws:/root/.aws -it ph200/aws-eb-cli
```

#### With environment variables

Check ["Configuration settings and precedence"](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-configuration.html#eb-cli3-credentials) for further details.

```sh
docker run -e AWS_ACCESS_KEY_ID=$AWS_KEY -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET -it ph200/aws-eb-cli
```

### eb init

```sh
docker run -v ~/.aws:/root/.aws -v $(pwd):/app -it ph200/aws-eb-cli eb init
```

### eb create

```sh
docker run -v ~/.aws:/root/.aws -v $(pwd):/app -it ph200/aws-eb-cli eb create
```

## References

[aws/aws-elastic-beanstalk-cli](https://github.com/aws/aws-elastic-beanstalk-cli)

[AWS - Install the EB CLI](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html)
