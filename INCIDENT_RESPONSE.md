# Incident Response Playbook

## 🚨 Suspected Project Theft or Unauthorized Access

If you suspect your project is being stolen or accessed without authorization, follow this incident response plan:

### Immediate Actions (First 1 hour)

1. **Assess the Situation**
   - [ ] Identify what access occurred (when, who, what was accessed)
   - [ ] Check GitHub audit logs (Settings → Audit log)
   - [ ] Review recent commits and changes
   - [ ] Check for unauthorized forks or clones

2. **Contain the Incident**
   - [ ] Change your GitHub password immediately
   - [ ] Enable Two-Factor Authentication (2FA) if not already enabled
   - [ ] Review and revoke any suspicious personal access tokens
   - [ ] Check SSH keys and remove any unrecognized keys
   - [ ] Review OAuth applications and revoke suspicious authorizations

3. **Secure the Repository**
   - [ ] Make the repository private (if it was public)
   - [ ] Review collaborator list and remove unauthorized users
   - [ ] Enable branch protection on all important branches
   - [ ] Require code review for all PRs
   - [ ] Enable required status checks

### Investigation Phase (1-24 hours)

4. **Gather Evidence**
   - [ ] Download and save GitHub audit logs
   - [ ] Screenshot suspicious activities
   - [ ] Document timeline of events
   - [ ] Identify what data/code may have been accessed
   - [ ] Check if any secrets or credentials were exposed

5. **Analyze the Breach**
   - [ ] Determine entry point (how access was gained)
   - [ ] Identify what was accessed or stolen
   - [ ] Check for malicious commits or code changes
   - [ ] Review webhook configurations
   - [ ] Check GitHub Actions workflows for tampering

### Recovery Actions (24-48 hours)

6. **Remediate the Issue**
   - [ ] Rotate all credentials, API keys, and secrets
   - [ ] Update dependencies to latest secure versions
   - [ ] Remove any malicious code or backdoors
   - [ ] Restore from clean backup if necessary
   - [ ] Update .gitignore to prevent sensitive data commits

7. **Strengthen Security**
   - [ ] Implement all recommendations from SECURITY.md
   - [ ] Enable all GitHub security features:
     - [ ] Dependabot alerts
     - [ ] Secret scanning
     - [ ] Code scanning (CodeQL)
     - [ ] Dependency review
   - [ ] Require signed commits
   - [ ] Set up security monitoring and alerts

### Reporting and Legal (As needed)

8. **Report the Incident**
   - [ ] Contact GitHub Support: https://support.github.com/
   - [ ] File DMCA takedown if code was copied: https://github.com/contact/dmca
   - [ ] Report to appropriate authorities if criminal activity suspected
   - [ ] Document incident for insurance/legal purposes

9. **Legal Action (if applicable)**
   - [ ] Consult with legal counsel about intellectual property theft
   - [ ] Gather evidence for potential legal action
   - [ ] Send cease and desist letter if unauthorized use identified
   - [ ] Consider copyright infringement claims

### Post-Incident Review (1 week after)

10. **Learn and Improve**
    - [ ] Document what happened and how it was resolved
    - [ ] Identify security gaps that allowed the incident
    - [ ] Update security policies and procedures
    - [ ] Train team members on security best practices
    - [ ] Schedule regular security audits

## GitHub Security Features to Enable

### Repository Settings → Security & analysis

1. **Dependency graph**: ON
2. **Dependabot alerts**: ON
3. **Dependabot security updates**: ON
4. **Code scanning**: Configure CodeQL
5. **Secret scanning**: ON (for public repos, or with GitHub Advanced Security)

### Repository Settings → Branches

1. **Branch protection rules** for main/master:
   - Require pull request reviews before merging
   - Require status checks to pass
   - Require signed commits
   - Include administrators
   - Restrict force pushes
   - Restrict deletions

### Account Settings → Security

1. **Two-factor authentication**: Enable
2. **Sessions**: Review and revoke unknown sessions
3. **SSH keys**: Review and remove unknown keys
4. **Personal access tokens**: Audit and rotate regularly
5. **GitHub Apps**: Review authorized applications

## Monitoring Checklist

Review these regularly (weekly or monthly):

- [ ] Audit logs for suspicious activity
- [ ] Collaborator access list
- [ ] Fork network (Settings → Insights → Network)
- [ ] Traffic analytics (who's viewing your repo)
- [ ] Security alerts and notifications
- [ ] Dependency vulnerabilities
- [ ] Third-party integrations

## Emergency Contacts

- **GitHub Support**: https://support.github.com/
- **DMCA Takedown**: https://github.com/contact/dmca
- **Security Email**: rayartemexatatto@gmail.com
- **Legal Counsel**: (Add if applicable)

## Useful GitHub Links

- Audit Log: `https://github.com/organizations/YOUR_ORG/settings/audit-log`
- Security Advisories: `https://github.com/YOUR_USER/YOUR_REPO/security/advisories`
- Access Overview: `https://github.com/YOUR_USER/YOUR_REPO/settings/access`
- DMCA Policy: https://docs.github.com/en/site-policy/content-removal-policies/dmca-takedown-policy

---

**Remember**: Quick action is critical when dealing with unauthorized access. Follow this playbook systematically and document everything.
