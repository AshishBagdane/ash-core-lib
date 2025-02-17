# ASH Core Library

[![Maven Central](https://img.shields.io/maven-central/v/ash.core.lib/ash-core-lib.svg)](https://central.sonatype.com/artifact/ash.core.lib/ash-core-lib)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)
[![Build Status](https://github.com/AshishBagdane/ash-core-lib/workflows/Build/badge.svg)](https://github.com/AshishBagdane/ash-core-lib/actions)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=ash-core-lib&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=ash-core-lib)

A comprehensive Spring Boot library providing standardized configurations and
reusable components for enterprise applications.

## Overview

ASH Core Library is a modular enterprise-grade library designed to streamline
the development of Spring Boot applications by providing pre-configured
components, standardized configurations, and reusable utilities. The library
emphasizes maintainability, flexibility, and adherence to best practices.

## Features

- **Security Configuration**: Pre-configured security settings with flexible
  authentication and authorization
- **Kafka Integration**: Standardized messaging configuration with error
  handling and retry mechanisms
- **Exception Handling**: Centralized error management with consistent response
  structures
- **Aspect-Oriented Programming**: Reusable aspects for logging, monitoring, and
  transactions
- **OpenAPI Documentation**: Automated API documentation generation
- **Object Mapping**: Pre-configured MapStruct settings with common mapping
  patterns
- **Custom Annotations**: Simplified configuration through custom annotations
- **Utility Classes**: Common utilities for everyday development tasks

## Project Structure

```
ash-core-lib/
├── bom/                    # Bill of Materials for version management
├── base/                   # Common functionality and core dependencies
├── core-config/           # Base configurations and properties
├── security/              # Authentication and authorization
├── messaging/             # Kafka configuration and components
├── error-handling/        # Exception handling and error responses
├── aspects/               # AOP components
├── documentation/         # OpenAPI configuration
├── mapper-config/         # MapStruct configuration
├── annotations/           # Custom annotations
└── utils/                 # Utility classes
```

## Requirements

- Java 21 or higher
- Spring Boot 3.4.1 or higher
- Maven 3.8.1 or higher

## Installation

Add the following to your `pom.xml`:

```xml

<dependencyManagement>
  <dependencies>
    <dependency>
      <groupId>ash.core.lib</groupId>
      <artifactId>ash-core-lib-bom</artifactId>
      <version>${ash-core-lib.version}</version>
      <type>pom</type>
      <scope>import</scope>
    </dependency>
  </dependencies>
</dependencyManagement>
```

Then add specific modules as needed:

```xml

<dependencies>
  <dependency>
    <groupId>ash.core.lib</groupId>
    <artifactId>security</artifactId>
  </dependency>
  <dependency>
    <groupId>ash.core.lib</groupId>
    <artifactId>messaging</artifactId>
  </dependency>
  <!-- Add other modules as needed -->
</dependencies>
```

## Quick Start

1. **Add Dependencies**: Include required modules in your project
2. **Configure Properties**: Set up necessary properties in `application.yml`
3. **Enable Features**: Use provided annotations to enable specific features

Example configuration:

```java

@SpringBootApplication
@EnableAshSecurity
@EnableAshMessaging
public class Application {

  public static void main(String[] args) {
    SpringApplication.run(Application.class, args);
  }
}
```

## Module Documentation

Each module has its own detailed documentation:

- [BOM](./bom/README.md) - Version management
- [Base](./base/README.md) - Core functionality
- [Security](./security/README.md) - Security configurations
- [Messaging](./messaging/README.md) - Kafka integration
- [Error Handling](./error-handling/README.md) - Exception management
- [Aspects](./aspects/README.md) - AOP components
- [Documentation](./documentation/README.md) - OpenAPI setup
- [Mapper Config](./mapper-config/README.md) - MapStruct configuration
- [Annotations](./annotations/README.md) - Custom annotations
- [Utils](./utils/README.md) - Utility classes

## Configuration

The library uses Spring Boot's configuration mechanism. Common properties can be
set in `application.yml`:

```yaml
ash:
  security:
    enabled: true
    jwt:
      secret: your-secret-key
      expiration: 86400000

  messaging:
    kafka:
      bootstrap-servers: localhost:9092
      consumer:
        group-id: my-group

  # Other module configurations
```

## Best Practices

1. **Module Independence**

- Use only required modules
- Follow module-specific guidelines
- Maintain loose coupling

2. **Configuration Management**

- Override default configurations when needed
- Use environment-specific properties
- Document custom configurations

3. **Extension and Customization**

- Extend base classes for custom behavior
- Use provided interfaces for implementations
- Follow the extension guidelines

## Contributing

We welcome contributions to ASH Core Library! Please read
our [CONTRIBUTING.md](CONTRIBUTING.md) file for guidelines on how to contribute
to this project, including:

- Code of Conduct
- Development Setup
- Contribution Process
- Pull Request Guidelines
- Coding Standards
- Testing Requirements

### Development Setup

```bash
# Clone the repository
git clone https://github.com/AshishBagdane/ash-core-lib.git

# Build the project
mvn clean install

# Run tests
mvn test
```

## License

This project is licensed under the Apache License 2.0 - see
the [LICENSE](LICENSE) file for details.

## Support

- Create an [issue](https://github.com/AshishBagdane/ash-core-lib/issues) for
  bug reports
- Start
  a [discussion](https://github.com/AshishBagdane/ash-core-lib/discussions) for
  questions
- Check [documentation](https://ashishbagdane.github.io/ash-core-lib) for guides

## Versioning

This project follows Calendar Versioning (CalVer):

- Format: `YYYY.MINOR.PATCH`
- Example: `2025.1.0`

## Authors

- **Ashish Bagdane** - *Initial
  work* - [AshishBagdane](https://github.com/AshishBagdane)

## Acknowledgments

- Spring Boot team for the excellent framework
- All contributors who have helped shape this library
