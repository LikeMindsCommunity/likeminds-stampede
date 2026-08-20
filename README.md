# LikeMinds Stampede

This repo contains the Jenkins file and Terraform configuration files to provision an GKE cluster on GCP containing all the existing services at LikeMinds for the purpose of performing Load Tests.

## What is this project?

This project helps us to deploy the replica of all the existing microservices, here at **LikeMinds**, and perform load test on all the APIs to compute cost and API performance.

## How to setup locally

- Setup Jenkins locally using this [doc](https://www.jenkins.io/doc/book/installing/).
- Clone this repo locally.
- Run `Jenkins` file in the repo using Jenkins dashboard.

## References

- [Engineering Document](https://likemindscommunity.atlassian.net/wiki/spaces/PRT/pages/1973354513/Load+Testing+Framework)
- [Load Test Guide](https://likemindscommunity.atlassian.net/wiki/spaces/PRT/pages/2036171142/Steps+to+Load+Test)

## License

Licensed under the Apache License, Version 2.0. See [LICENSE](LICENSE) for details.

---

## A note on the Jenkins pipelines

The `Jenkinsfile.*` files in this repo are **retained for historical reference and are not
operational**. The Jenkins servers and the AWS and Azure infrastructure they deployed to were
decommissioned in August 2026, so nothing in them runs.

They are kept because they document how this service was built and deployed: the image layout per
environment, the component split, and the deployment topology. Read them as history, not as a build
system you can run.

The GitHub Actions workflows in `.github/workflows`, where present, are the only automation that
still executes.
