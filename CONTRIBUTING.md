# Contributing to leviatan-centinel

Thank you for your interest in contributing to leviatan-centinel! This document provides guidelines for contributing to this project.

## Code of Conduct

By participating in this project, you agree to maintain respect for intellectual property and follow ethical development practices.

## How to Contribute

1. **Fork the repository** (only if you have permission)
2. **Create a feature branch** from `main`
3. **Make your changes** following the coding standards
4. **Test your changes** thoroughly
5. **Commit with clear messages** (see commit guidelines below)
6. **Submit a pull request** with a detailed description

## Commit Guidelines

- Use clear, descriptive commit messages
- Sign your commits with GPG to verify authenticity
- Reference related issues in commit messages
- Follow conventional commits format when possible

### Setting up GPG Signing

```bash
# Generate a GPG key
gpg --full-generate-key

# List your keys
gpg --list-secret-keys --keyid-format=long

# Configure git to use your key
git config --global user.signingkey YOUR_KEY_ID
git config --global commit.gpgsign true
```

## Security Guidelines

**IMPORTANT**: This project is protected by copyright. Contributors must:

1. **Never commit sensitive data**:
   - Passwords, API keys, or tokens
   - Personal information or credentials
   - Proprietary code from other sources

2. **Respect intellectual property**:
   - Only contribute your own original work
   - Properly attribute any third-party code
   - Follow the project's license terms

3. **Report security issues privately**:
   - Email security issues to: rayartemexatatto@gmail.com
   - Do not disclose vulnerabilities publicly

## Development Setup

(Add specific setup instructions for your project here)

```bash
# Clone the repository
git clone https://github.com/rayartemexatatto-cent/leviatan-centinel.git

# Navigate to project
cd leviatan-centinel

# (Add any build/setup commands)
```

## Code Review Process

All contributions will be reviewed for:
- Code quality and standards
- Security implications
- Intellectual property compliance
- Test coverage
- Documentation updates

## Attribution

By contributing to this project, you agree that your contributions will be licensed under the same license as the project (see LICENSE file).

## Questions?

Contact the project maintainer: rayartemexatatto@gmail.com

---

**Remember**: Respect the intellectual property of this project. Unauthorized copying or distribution is prohibited.
