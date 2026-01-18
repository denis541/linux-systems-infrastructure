# 🔐 Identity & Access Management (IAM) Implementation

![CCNA](https://img.shields.io/badge/CCNA-Security%20Lab-1BA0D7)
![IAM](https://img.shields.io/badge/Identity%20%26%20Access%20Management-IAM-critical)
![Linux Security](https://img.shields.io/badge/Linux-File%20Permissions-orange)
![Compliance](https://img.shields.io/badge/Regulatory-Compliance-blue)

## 🛡️ Scenario: Securing Financial Data Assets

**Project Goal:** Ensure data integrity and accountability by assigning dedicated ownership of sensitive financial records to the authorized department lead and restricting global write access.

---

### 1. Executive Summary

In an enterprise environment, maintaining the **Confidentiality, Integrity, and Availability (CIA Triad)** of financial records is critical. This implementation demonstrates the transition of a system asset (`finance_accounts`) from a generic root-owned state to a governed state where access is restricted based on corporate roles and responsibilities.

---

### 2. Technical Strategy

This implementation follows the **Principle of Least Privilege (PoLP)**. By assigning explicit ownership and applying a restrictive permission mask, the risk of accidental deletion, unauthorized modification, or tampering by non-authorized personnel is significantly reduced.

| Component           | Specification                          |
| :----------------- | :-------------------------------------- |
| **System Identity** | User: `denis` (Finance Dept Lead)      |
| **Target Asset**    | `finance_accounts` (Financial Ledger)  |
| **Security Mask**   | `744` (`rwx r-- r--`)                  |
| **Access Level**    | Owner: Full Control; Group/Others: Read-Only |

---

### 3. Implementation Workflow

#### Phase A: User Provisioning

A unique system identity was provisioned for the department lead to ensure all interactions with the financial ledger are attributable and auditable.

```bash
# Provision the authorized user with a home directory
sudo useradd -m denis
```
#### Phase B: Administrative Ownership Transfer
Ownership of the financial ledger was transferred from the system administrator to the designated data custodian to enforce clear accountability.
# Transfer ownership of the file to the designated lead
```bash
sudo chown denis:denis finance_accounts
```
#### Phase C: Permission Hardening & Masking
A strict permission model was applied. The owner retains full control, while Group and Others are restricted to read-only access for auditing and compliance.
```bash
# Apply the 744 Permission Set
# 7 = Owner: Read/Write/Execute
# 4 = Group: Read-Only
# 4 = Others: Read-Only
sudo chmod 744 finance_accounts
```
## Business Outcome & Compliance
- Regulatory Compliance: Aligns with Data Protection Acts by ensuring only authorized personnel can modify sensitive financial data.
- Operational Security: Protects the authoritative “Source of Truth” for financial reporting.
- Reduced Attack Surface: Prevents unauthorized users from executing, modifying, or deleting the ledger file, thereby strengthening overall system security
