# GH-600 Agentic Application Development Lab

This repository contains the sample application and Azure infrastructure provisioning code used in the GH-600 hands-on lab. The lab is designed to help learners prepare for the GH-600 exam while building a practical understanding of agentic application development workflows with GitHub Copilot.

## Start the lab

> [!IMPORTANT]
> This repository is the **lab workspace**, not the instruction manual. To complete the lab, follow the step-by-step guidance in the **[GH-600 Lab Instructions](https://github.com/sameeraman/gh-600-lab-instructions)** repository.

Open the instructions repository first and use this repository whenever the manual asks you to inspect, modify, test, or deploy the sample application.

## What's included

The [`gh-600-lab-starter`](https://github.com/sameeraman/gh-600-lab-starter) repository provides:

- A React and Vite frontend for the sample Todo application.
- An ASP.NET Core 8 Web API with Entity Framework Core.
- Unit tests and Playwright end-to-end tests.
- Bicep templates for provisioning the Azure environment.
- Configuration for Azure Static Web Apps, App Service, managed identity, and Azure SQL Database.
- A conventional GitHub Actions pipeline with the GH-500 security baseline.

## What you will do in the lab

Using the guides in the [`gh-600-lab-instructions`](https://github.com/sameeraman/gh-600-lab-instructions) repository, you will:

- Deploy the sample application to Azure using OIDC federation and managed identity.
- Create repository-wide and path-specific instructions that give agents durable context.
- Build specialized custom agents with deliberately limited tool permissions.
- Configure MCP servers and a cloud-agent environment.
- Analyze agent memory and session state, then diagnose and tune agent failures.
- Run unit and Playwright end-to-end tests as evidence in an agentic CI/CD pipeline.
- Orchestrate parallel agent reviews and consolidate their reports through workflow artifacts.
- Add preventive policy hooks, audit trails, and least-privilege controls.
- Gate production deployment on human approval, then run smoke tests and an agent audit.
- Test your GH-600 knowledge with exam-style questions and a final reference guide.

## Repository structure

```text
.
├── infra/          # Azure infrastructure defined with Bicep
├── src/
│   ├── api/        # ASP.NET Core API and tests
│   └── frontend/   # React frontend and end-to-end tests
└── README.md
```

## How to use this repository

1. Go to the [GH-600 Lab Instructions](https://github.com/sameeraman/gh-600-lab-instructions).
2. Follow the manual in order, including its prerequisites and setup steps.
3. Use this repository as the working codebase for the exercises.
4. Return to the manual for each next step rather than treating this README as a standalone lab guide.

## About the lab

The goal of this lab is not only to support exam preparation, but also to build a grounded understanding of how GitHub Copilot can participate in the application development lifecycle, from working with application code and tests to provisioning cloud infrastructure.

This is a community learning resource and is not an official GitHub exam guide. Always review the current official GH-600 exam materials alongside the lab.

## Disclaimer

> [!NOTE]
> This sample application and its infrastructure are provided for demonstration and educational purposes only. They are intended to help learners understand the concepts and workflows behind agentic application development and are not designed or validated for production use.
# GH-600 Lab — sammysbot87 fork
