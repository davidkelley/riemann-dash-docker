# Riemann Dashboard 0.2.4

This Dockerfile runs the [Riemann Dashboard](https://github.com/aphyr/riemann-dash) from [paintedfox/ruby](https://index.docker.io/u/davidkelley/riemann-dash)

## Starting the Dashboard

```
docker run -p 4567:4567 davidkelley/riemann-dash
```

Afterwards, you can visit the dashboard by visiting: [http://localhost:4567](http://localhost:4567).

Follow Riemann's getting started guide [here](http://riemann.io/quickstart.html). You may also wish to install the [riemann-tools](https://github.com/aphyr/riemann-tools) gem, which lets you get some stats (by running `$ riemann-health`) into your Riemann server.

## Starting the Server

Use this Docker Repository: [https://index.docker.io/u/davidkelley/riemann](https://index.docker.io/u/davidkelley/riemann)