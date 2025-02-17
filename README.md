# Ashish's Spring Boot Library

A comprehensive, production-ready Spring Boot library that provides standardized configurations and
common functionalities for enterprise applications. This library helps development teams focus on
business logic while ensuring consistent implementation of technical aspects across multiple
projects.

## Features

### 🔒 Security (security)

- Pre-configured Spring Security setup
- Flexible authentication and authorization
- Customizable security filters and interceptors
- Role-based and permission-based access control
- Easy integration with various authentication providers

### 📫 Messaging (messaging)

- Standard Kafka configuration
- Producer and consumer templates
- Error handling and retry mechanisms
- Custom serializers and deserializers
- Dead letter queue support

### ⚠️ Error Handling (error-handling)

- Centralized exception handling
- Standardized error response structure
- Custom error codes and messages
- Global error handling with @ControllerAdvice
- Internationalization support for error messages

### 🎯 Aspects (aspects)

- Logging aspects
- Performance monitoring
- Transaction management
- Method-level security
- Custom aspect templates

### 📚 Documentation (documentation)

- OpenAPI (Swagger) configuration
- Standardized API documentation
- Custom description templates
- Response documentation
- API versioning support

### 🔄 Object Mapping (mapper-config)

- Pre-configured MapStruct setup
- Common mapping interfaces
- Custom mapping strategies
- Type conversions
- Collection mapping support

### 🏷️ Custom Annotations (annotations)

- Validation annotations
- Logging annotations
- Security annotations
- Transaction annotations
- Custom meta-annotations

### 🛠️ Utilities (utils)

- String manipulation
- Date/time utilities
- File handling
- Collection utilities
- Common helper classes

## Project Structure

```
enterprise-spring-library/
├── core-config/            # Base configurations and properties
├── security/              # Security configurations and components
├── messaging/             # Kafka and messaging setup
├── error-handling/        # Exception handling and error responses
├── aspects/               # AOP aspects and interceptors
├── documentation/         # OpenAPI documentation configuration
├── mapper-config/         # MapStruct configuration and base mappers
├── annotations/           # Custom annotations
└── utils/                 # Utility classes and helpers
```

## Getting Started

### Prerequisites

- Java 17 or higher
- Spring Boot 3.x
- Maven 3.6.x or higher

### Installation

Add the following dependency to your `pom.xml`:

```xml

<dependency>
  <groupId>ash.core.lib</groupId>
  <artifactId>ash-core-lib</artifactId>
  <version>${library.version}</version>
</dependency>
```

### Basic Configuration

1. Enable the library in your Spring Boot application:

```java

@SpringBootApplication
@EnableEnterpriseLibrary
public class YourApplication {

  public static void main(String[] args) {
    SpringApplication.run(YourApplication.class, args);
  }
}
```

2. Add required properties to `application.yml`:

```yaml
enterprise:
  security:
    enabled: true
    default-roles: USER
  kafka:
    enabled: true
    bootstrap-servers: localhost:9092
  documentation:
    enabled: true
    base-package: com.your.application
```

## Customization

### Overriding Default Configurations

Create a configuration class in your application:

```java

@Configuration
public class CustomSecurityConfig extends LibrarySecurityConfig {

  @Override
  protected void configure(HttpSecurity http) throws Exception {
    // Your custom security configuration
  }
}
```

### Extending Features

Example of extending the base error handler:

```java

@ControllerAdvice
public class CustomErrorHandler extends BaseErrorHandler {

  @Override
  protected ErrorResponse handleCustomException(CustomException ex) {
    // Your custom error handling logic
  }
}
```

## Documentation

Detailed documentation for each module is available in their respective directories:

- [Security Documentation](./security/README.md)
- [Messaging Documentation](./messaging/README.md)
- [Error Handling Documentation](./error-handling/README.md)
- [Aspects Documentation](./aspects/README.md)
- [OpenAPI Documentation](./documentation/README.md)
- [MapStruct Configuration](./mapper-config/README.md)
- [Custom Annotations](./annotations/README.md)
- [Utilities Documentation](./utils/README.md)

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Support

For support and questions, please:

1. Check the documentation
2. Search existing issues
3. Open a new issue if needed

## Acknowledgments

- Spring Boot team for the amazing framework
- All contributors who help improve this library