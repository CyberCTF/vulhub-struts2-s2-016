# Apache Struts2 S2-016 OGNL Injection

[Vulhub](https://vulhub.org)'s [`struts2/s2-016`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/struts2/s2-016) environment, by
phith0n and the Vulhub contributors: a Struts 2.3.15 application whose `redirect:` and `action:` parameter prefixes evaluate OGNL. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine is built from Vulhub's Dockerfile in [`app/`](app), unchanged; the base image's Dockerfile is vendored in [`base/`](base).

| Machine | Service |
| --- | --- |
| struts2 | Struts 2.3.15 application on Tomcat 8.5, port 8080 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8080/index.action. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/struts2/s2-016/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
