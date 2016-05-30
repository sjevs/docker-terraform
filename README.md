# Terraform Docker Image

This Docker image is based on the official [Alpine](http://www.alpinelinux.org/) base image.

Current size is [here](https://hub.docker.com/r/sjevs/docker-terraform/tags/) - 153 MB

## What is Terraform

[TerraForm](http://www.terraform.io/) provides a common configuration to launch infrastructure from physical and virtual servers to email and DNS providers. Once launched, Terraform safely and efficiently changes infrastructure as the configuration is evolved.
Simple file based configuration gives you a single view of your entire infrastructure.

## Run

```
docker run -it --rm -v $PWD:/src sjevs/terraform [options] [DIR]
```

This way current directory will be available. Specify only relative paths in the directory

## Reference

Inspired by [broadinstitute/terraform](https://github.com/broadinstitute/docker-terraform)
