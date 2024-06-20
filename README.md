# resume

LaTeX document to allow for quick and consistent formatting for my cv and cover
letter.

## Quick Setup

Run the docker-compose stack with one of the following profiles:

- `ci`: builds and exits
- `dev`: to builds and watches for changes

```sh
export COMPOSE_PROFILE=dev
docker-compose up
```

Built PDFs are found under `/out`.

## Requirements

- docker

## Customizing Info

Two directories can be chosen when deciding where to save the resume info for
the generated files, `./latex/info/` and `./latex/private/`. The files under
the `./latex/private/` directory take priority.
