# Project Theft Protection Guide

## 🚨 If You Suspect Your Project Is Being Stolen

This guide provides immediate actions you can take if you suspect your GitHub project is being stolen or accessed without authorization.

## Immediate Actions (Do This NOW)

### 1. Secure Your GitHub Account (5 minutes)

```bash
# Change your GitHub password immediately
# Go to: https://github.com/settings/security

# Enable Two-Factor Authentication
# Go to: https://github.com/settings/security
```

**Critical Steps:**
- [ ] Change GitHub password
- [ ] Enable 2FA if not already enabled
- [ ] Review active sessions: https://github.com/settings/sessions
- [ ] Revoke suspicious personal access tokens: https://github.com/settings/tokens
- [ ] Check SSH keys: https://github.com/settings/keys
- [ ] Review authorized OAuth apps: https://github.com/settings/applications

### 2. Secure Your Repository (10 minutes)

**Check Who Has Access:**
```
Go to: https://github.com/rayartemexatatto-cent/leviatan-centinel/settings/access
```

- [ ] Review all collaborators
- [ ] Remove any unauthorized users
- [ ] Check if repository is public or private
- [ ] Consider making it private temporarily

**Enable Repository Protection:**
```
Go to: https://github.com/rayartemexatatto-cent/leviatan-centinel/settings
```

- [ ] Settings → Options → Features → Disable "Wikis" if not needed
- [ ] Settings → Options → Features → Disable "Issues" temporarily if needed
- [ ] Settings → Branches → Add branch protection for main/master
- [ ] Settings → Security & analysis → Enable all security features

### 3. Investigate What Happened (15 minutes)

**Check Audit Logs:**
```
# For organizations:
https://github.com/organizations/YOUR_ORG/settings/audit-log

# For personal accounts, check:
https://github.com/settings/security-log
```

Look for:
- Unauthorized logins
- Suspicious clones or forks
- Unexpected collaborator additions
- Token creations or usage
- Repository visibility changes

**Check Repository Activity:**
```bash
# View recent commits
git log --all --oneline -20

# Check for suspicious commits
git log --all --author="SUSPICIOUS_EMAIL"

# Review all branches
git branch -a

# Check repository traffic
# Go to: https://github.com/rayartemexatatto-cent/leviatan-centinel/graphs/traffic
```

### 4. Document Everything (Ongoing)

Create a security incident log:

```markdown
# Security Incident Log

**Date Detected**: [DATE]
**Time Detected**: [TIME]

## What I Noticed:
- [Describe suspicious activity]

## Evidence:
- Screenshot of audit logs
- List of suspicious commits
- Unauthorized access attempts
- Unusual fork/clone activity

## Actions Taken:
- [ ] Changed password
- [ ] Enabled 2FA
- [ ] Removed unauthorized collaborators
- [ ] Made repository private
- [ ] Other: _________
```

## Check for Code Theft

### Find Unauthorized Copies

**Search GitHub for your code:**
```
1. Go to: https://github.com/search
2. Search for unique strings from your code
3. Filter by: Code
4. Look for unauthorized repositories
```

**Use GitHub's DMCA takedown:**
```
If you find unauthorized copies:
https://github.com/contact/dmca
```

### Verify Your Forks

```bash
# Check all forks of your repository
# Go to: https://github.com/rayartemexatatto-cent/leviatan-centinel/network/members

# Review each fork for:
- When it was created
- Who created it
- Whether it's authorized
```

## GitHub Security Features to Enable NOW

### Repository Settings → Security & analysis

1. **Dependency graph**: ✅ Enable
2. **Dependabot alerts**: ✅ Enable  
3. **Dependabot security updates**: ✅ Enable
4. **Code scanning**: ✅ Set up CodeQL
5. **Secret scanning**: ✅ Enable

### Repository Settings → Branches

**Branch Protection Rules for `main`:**

```yaml
Protection Settings:
✅ Require pull request reviews before merging
  - Required approving reviews: 1
  - Dismiss stale PR approvals when new commits are pushed
✅ Require status checks to pass before merging
✅ Require signed commits
✅ Include administrators
✅ Restrict who can push to matching branches
✅ Restrict force pushes
✅ Restrict deletions
```

### Repository Settings → Webhooks

```bash
# Check for suspicious webhooks
Go to: https://github.com/rayartemexatatto-cent/leviatan-centinel/settings/hooks

# Look for:
- Webhooks you didn't create
- URLs pointing to suspicious domains
- Webhooks with full repository access
```

## Monitoring and Prevention

### Set Up Monitoring

**1. Email Notifications:**
```
Settings → Notifications → Email notification preferences
✅ Email me when: Everything
```

**2. Watch Your Repository:**
```
On your repository page:
Watch → All Activity
```

**3. GitHub Mobile App:**
```
Install GitHub mobile app for instant notifications:
- iOS: https://apps.apple.com/app/github/id1477376905
- Android: https://play.google.com/store/apps/details?id=com.github.android
```

### Regular Security Audits

**Weekly Tasks:**
- [ ] Review audit logs
- [ ] Check repository collaborators
- [ ] Review access tokens
- [ ] Monitor repository traffic
- [ ] Check for unauthorized forks

**Monthly Tasks:**
- [ ] Audit all access permissions
- [ ] Review and rotate credentials
- [ ] Update dependencies
- [ ] Review security alerts
- [ ] Test incident response plan

## Legal Actions

### If Code Was Stolen

**1. Send Cease and Desist:**
```
Contact the repository owner directly:
- Request immediate takedown
- Cite copyright infringement
- Set deadline for compliance
```

**2. File DMCA Takedown Notice:**
```
GitHub DMCA: https://github.com/contact/dmca

Required information:
- Your contact information
- Link to original work
- Link to infringing work
- Statement of good faith
- Physical or electronic signature
```

**3. Consult Legal Counsel:**
```
For serious cases:
- Contact intellectual property attorney
- Gather all evidence
- Consider copyright registration
- Evaluate damages
```

## Prevention Best Practices

### Code Protection

**1. Add Copyright Headers:**
```javascript
/**
 * leviatan-centinel
 * Copyright (c) 2026 Levi Calderon Zarate
 * Licensed under MIT License
 * 
 * NOTICE: Unauthorized copying or distribution prohibited.
 */
```

**2. Use License File:**
- Include LICENSE file in repository
- Add copyright notices to all source files
- Include attribution requirements

**3. Watermark Your Code:**
```javascript
// Add unique identifiers in comments
// Project: leviatan-centinel
// Author: Levi Calderon Zarate
// Build: UNIQUE_ID_HERE
```

### Access Control

**1. Use Private Repositories:**
- Keep sensitive code private
- Only grant access to trusted collaborators
- Use organization accounts for team projects

**2. Implement Signed Commits:**
```bash
# Generate GPG key
gpg --full-generate-key

# Configure Git
git config --global user.signingkey YOUR_KEY_ID
git config --global commit.gpgsign true

# Add GPG key to GitHub
# Settings → SSH and GPG keys → New GPG key
```

**3. Use Deploy Keys:**
```bash
# For CI/CD, use deploy keys instead of personal tokens
# Settings → Deploy keys
# Limit scope to specific repositories
```

## Emergency Contact Information

**GitHub Support:**
- General: https://support.github.com/
- DMCA: https://github.com/contact/dmca
- Security: security@github.com

**Project Contact:**
- Email: rayartemexatatto@gmail.com

**Legal Resources:**
- Copyright Office: https://www.copyright.gov/
- WIPO: https://www.wipo.int/

## Additional Resources

- [GitHub Security Best Practices](https://docs.github.com/en/code-security)
- [DMCA Takedown Policy](https://docs.github.com/en/site-policy/content-removal-policies/dmca-takedown-policy)
- [GitHub Audit Log](https://docs.github.com/en/organizations/keeping-your-organization-secure/reviewing-the-audit-log-for-your-organization)
- [Securing Your Account](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure)

---

**Act quickly if you suspect theft. Time is critical for protecting your intellectual property.**

For detailed incident response, see: [INCIDENT_RESPONSE.md](./INCIDENT_RESPONSE.md)
