# Contributing to Enterprise Spring Boot Library

Thank you for your interest in contributing to our Enterprise Spring Boot Library! This guide will
help you understand how you can contribute effectively to this project and its submodules.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Development Workflow](#development-workflow)
- [Pull Request Process](#pull-request-process)
- [Coding Standards](#coding-standards)
- [Testing Guidelines](#testing-guidelines)
- [Documentation](#documentation)
- [Module-Specific Guidelines](#module-specific-guidelines)

## Code of Conduct

We are committed to providing a welcoming and inclusive environment for all contributors. We expect
all participants to:

- Be respectful and considerate of different viewpoints
- Use welcoming and inclusive language
- Accept constructive criticism gracefully
- Focus on what's best for the community
- Show empathy towards other community members

## Project Structure

Our project follows a multi-module structure with the following components:

- **core-config**: Base configurations and properties
- **security**: Authentication and authorization configurations
- **messaging**: Kafka integration and configuration
- **error-handling**: Centralized exception handling
- **aspects**: AOP implementations
- **documentation**: OpenAPI configuration
- **mapper-config**: MapStruct configurations
- **annotations**: Custom annotations
- **utils**: Utility classes and helpers

## Getting Started

1. Fork the repository
2. Clone your fork:
   ```bash
   git clone https://github.com/YOUR-USERNAME/project-name.git
   ```
3. Set up the development environment:
   ```bash
   cd project-name
   mvn clean install
   ```
4. Create a new branch for your feature/fix:
   ```bash
   git checkout -b feature/your-feature-name
   ```

## Development Workflow

1. **Choose an Issue**: Start by selecting an open issue or creating a new one
2. **Discuss**: For significant changes, discuss your approach in the issue
3. **Branch**: Create a feature branch from `master`
4. **Develop**: Make your changes following our coding standards
5. **Test**: Ensure all tests pass and add new tests as needed
6. **Document**: Update relevant documentation
7. **Submit**: Create a pull request

## Pull Request Process

1. **Branch Naming**:
    - Features: `feature/description`
    - Releases: `release/description`
    - Hotfixes: `hotfix/description`
    - Support: `support/description`
    - Documentation: `docs/description`

2. **Commit Messages**:
   ```
   type(scope): description

   [scope is optional]
   [optional body]
   [optional footer]
   ```
   Types: feat, fix, docs, style, refactor, test, chore

3. **PR Description**:
    - Clear description of changes
    - Reference related issues
    - List breaking changes if any
    - Include screenshots for UI changes

4. **Review Process**:
    - PRs require at least one reviewer approval
    - Address all review comments
    - Maintain a civil and professional dialogue

## Coding Standards

- Follow Java coding conventions
- Use meaningful variable and method names
- Keep methods focused and concise
- Document public APIs with Javadoc
- Use consistent formatting (provided by `.editorconfig`)
- Follow SOLID principles
- Write self-documenting code

## Testing Guidelines

- Write unit tests for new functionality
- Maintain test coverage above 80%
- Include integration tests for complex features
- Test error scenarios and edge cases
- Use meaningful test names following the pattern:
  `given_when_then` or `should_expectedBehavior_when_stateUnderTest`

## Documentation

- Update README.md when adding new features
- Document configuration properties
- Add/update Javadoc for public APIs
- Include examples for new functionality
- Update module-specific documentation

## Module-Specific Guidelines

### Core Config

- Keep configurations minimal and focused
- Document all configuration properties
- Provide clear override mechanisms

### Security

- Follow security best practices
- Document security configurations
- Include test cases for security scenarios

### Messaging

- Document message formats
- Include error handling mechanisms
- Provide clear consumer/producer examples

### Error Handling

- Use consistent error codes
- Document error scenarios
- Include recovery mechanisms

### Aspects

- Document aspect behavior
- Keep aspects focused
- Include performance considerations

### Documentation

- Follow OpenAPI standards
- Include clear descriptions
- Document all endpoints

### Mapper Config

- Document mapping strategies
- Include bi-directional mapping tests
- Provide clear examples

### Annotations

- Document annotation behavior
- Include usage examples
- Provide clear purpose

### Utils

- Document utility methods
- Include comprehensive tests
- Avoid duplicate functionality

## Need Help?

- Check existing issues and documentation
- Join our community chat
- Contact maintainers
- Review closed PRs for examples

Thank you for contributing to our project! Your efforts help make this library better for everyone.