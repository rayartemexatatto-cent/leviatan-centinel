#!/bin/bash

# Security Setup Script for leviatan-centinel
# This script helps you quickly configure security settings for your repository

echo "🔒 Security Setup for leviatan-centinel"
echo "========================================"
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if git is configured
echo "📋 Step 1: Checking Git Configuration..."
if git config user.name && git config user.email; then
    echo -e "${GREEN}✓ Git is configured${NC}"
else
    echo -e "${RED}✗ Git is not configured${NC}"
    echo "Please configure git with:"
    echo "  git config --global user.name 'Your Name'"
    echo "  git config --global user.email 'your.email@example.com'"
fi
echo ""

# Check for GPG signing
echo "📋 Step 2: Checking GPG Commit Signing..."
if git config commit.gpgsign | grep -q "true"; then
    echo -e "${GREEN}✓ GPG commit signing is enabled${NC}"
else
    echo -e "${YELLOW}⚠ GPG commit signing is not enabled${NC}"
    echo "To enable GPG signing:"
    echo "  1. Generate a GPG key: gpg --full-generate-key"
    echo "  2. List your keys: gpg --list-secret-keys --keyid-format=long"
    echo "  3. Configure git: git config --global user.signingkey YOUR_KEY_ID"
    echo "  4. Enable signing: git config --global commit.gpgsign true"
    echo "  5. Add key to GitHub: https://github.com/settings/keys"
fi
echo ""

# Check .gitignore
echo "📋 Step 3: Checking .gitignore..."
if [ -f .gitignore ]; then
    echo -e "${GREEN}✓ .gitignore exists${NC}"
else
    echo -e "${RED}✗ .gitignore is missing${NC}"
fi
echo ""

# Check for secrets in current directory
echo "📋 Step 4: Scanning for Potential Secrets..."
echo "Checking for common secret patterns..."

SECRET_PATTERNS=(
    "*.env"
    "*.key"
    "*.pem"
    "*password*"
    "*secret*"
    "*.p12"
    "*.pfx"
)

found_secrets=false
for pattern in "${SECRET_PATTERNS[@]}"; do
    if find . -name "$pattern" -not -path "./.git/*" | grep -q .; then
        echo -e "${RED}⚠ Found files matching: $pattern${NC}"
        find . -name "$pattern" -not -path "./.git/*"
        found_secrets=true
    fi
done

if [ "$found_secrets" = false ]; then
    echo -e "${GREEN}✓ No obvious secret files found${NC}"
fi
echo ""

# Check remote configuration
echo "📋 Step 5: Checking Remote Repository..."
if git remote get-url origin 2>/dev/null; then
    remote_url=$(git remote get-url origin)
    echo -e "${GREEN}✓ Remote configured:${NC} $remote_url"
else
    echo -e "${YELLOW}⚠ No remote repository configured${NC}"
fi
echo ""

# Security recommendations
echo "🛡️  Security Recommendations:"
echo "================================"
echo ""
echo "1. IMMEDIATE ACTIONS:"
echo "   • Change your GitHub password"
echo "   • Enable Two-Factor Authentication (2FA)"
echo "   • Review repository collaborators"
echo "   • Check GitHub security log: https://github.com/settings/security-log"
echo ""
echo "2. REPOSITORY SETTINGS:"
echo "   • Enable branch protection for main/master"
echo "   • Enable Dependabot alerts"
echo "   • Enable Code scanning (CodeQL)"
echo "   • Enable Secret scanning (if available)"
echo ""
echo "3. MONITORING:"
echo "   • Review audit logs weekly"
echo "   • Monitor repository traffic"
echo "   • Watch for unauthorized forks"
echo "   • Check for security alerts"
echo ""
echo "4. DOCUMENTATION:"
echo "   • Read SECURITY.md for security policy"
echo "   • Review INCIDENT_RESPONSE.md for incident handling"
echo "   • Check THEFT_PROTECTION.md for protection measures"
echo "   • Follow SECURITY_CHECKLIST.md regularly"
echo ""

# Next steps
echo "📖 Next Steps:"
echo "=============="
echo ""
echo "1. Review all documentation in this repository:"
echo "   • SECURITY.md - Security policy and reporting"
echo "   • INCIDENT_RESPONSE.md - What to do if project is compromised"
echo "   • THEFT_PROTECTION.md - Protection against code theft"
echo "   • SECURITY_CHECKLIST.md - Regular security tasks"
echo ""
echo "2. Configure GitHub repository settings:"
echo "   • Go to: https://github.com/rayartemexatatto-cent/leviatan-centinel/settings"
echo "   • Enable all security features under 'Security & analysis'"
echo "   • Set up branch protection rules"
echo ""
echo "3. Set up monitoring:"
echo "   • Install GitHub Mobile app for instant notifications"
echo "   • Enable email notifications for security alerts"
echo "   • Bookmark audit log page"
echo ""
echo "4. If you suspect your project has been stolen:"
echo "   • Follow INCIDENT_RESPONSE.md immediately"
echo "   • Check THEFT_PROTECTION.md for detailed steps"
echo "   • Contact: rayartemexatatto@gmail.com"
echo ""

echo -e "${GREEN}✓ Security setup check complete!${NC}"
echo ""
echo "For more information, see the documentation files in this repository."
