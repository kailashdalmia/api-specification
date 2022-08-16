# API Specifications

<img src="https://developer.nexmo.com/assets/images/Vonage_Nexmo.svg" height="48px" alt="Nexmo is now known as Vonage" />

Provides [OpenAPI Specification (v3)](https://github.com/OAI/OpenAPI-Specification) definitions for Nexmo APIs.

## Human-readable specifications

[View rendered API specifications](https://nexmo-api-specification.herokuapp.com/)

_(Raw specification files are in `definitions/`)_

## About OpenAPI

These definitions provide a single point of truth that can be used end-to-end:

- **Planning** Shared during product discussions for planning API functionality
- **Implementation** Inform engineering during development
- **Testing** As the basis for testing or mocking API endpoints
- **Documentation** For producing thorough and interactive documentation
- **Tooling** To generate server stubs and client SDKs.

## Resources

- [OAS3 Specification](http://spec.openapis.org/oas/v3.0.3)
- [OAS3 Examples](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v3.0)

## Tools

- [Stoplight Studio](https://stoplight.io/studio/) - powerful spec editor with validation and local mock server
- [Nexmo OAS Renderer](https://github.com/Nexmo/nexmo-oas-renderer) - Nexmo's tool for rendering OpenAPI specs to HTML.
- [Nexmo Developer](https://github.com/Nexmo/nexmo-developer) - Nexmo Developer uses these specs and the renderer for the API reference pages.

### Check your API spec for validity and style

We use [Spectral](https://stoplight.io/open-source/spectral/) to style and validity check our files. If you're using Stoplight Studio, this picks up our style definition by default. Otherwise, you can install the tool locally like this:

Install node version. If using node version manger you can:
```
nvm install && nvm use
```

Install node dependencies:
```
npm i
```

Run validation:
```
npm run validate
```

This runs the same checks that we use in the build that runs when you open a pull request.

In addition to semantic linting, we use [Prettier](https://prettier.io/) to enforce consistent formatting.

To run prettier locally:
```
npm run prettier:check
```

You can auto-format your specifications with the following command, but we recommend installing a Prettier plugin in your IDE to format on save:
```
npm run prettier:fix
```

### Check your API spec rendering
Below procedure assume you are not running the `nexmo-oas-renderer` locally and docker is available and running in your machine.
Build and run the render service locally to track changes in your API specification:
```
npm run docker:build
npm run docker:run
```

Open http://localhost:4567/ in your web browser.

Modify the api specification as required and refresh the relevant page for your changes to take effect. 

To stop the docker container, run:
```
npm run docker:stop
```

### Running GitHub action checks locally
You can run pull requests checks locally using [act](https://github.com/nektos/act) tool. Follow the act installation procedure (https://github.com/nektos/act#installation).

Run the github check locally, for example to run pull request checks: 
```
act pull_request -W .github/workflows/ci.yml
```

## Contributing

Contributions are welcome, please follow [GitHub Flow](https://guides.github.com/introduction/flow/index.html)
