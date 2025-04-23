class ReportsController < ApplicationController
  def index
    @report_data = {
      title: "Reconnaissance Summary - April 2025",
      created_at: Time.now - 2.days,
      updated_at: Time.now,
      executive_summary: {
        overview: "This is a simulated overview of the attack surface.",
        targets_scope: "example.com",
        high_level_findings: "discovered 12 subdomains, identified 8 exposed assets, uncovered 3 leaked credential sets"
      },
      report_metadata: {
        report_version: "v1.0",
        generated_by: "Ala Kaddechi",
        generated_at: Time.now.strftime("%Y-%m-%d %H:%M")
      },
      methodology: [
        { task: "Subdomain Enumeration", status: "complete", description: "Discovered subdomains using multiple tools" },
        { task: "Search Leaks", status: "complete", description: "Found 3 leak sources" }
      ],
      findings: {
        domain_dns_intelligence: {
          domains: 5,
          dns_records_summary: {
            ns_records_info: [
              { name: "ns1.example.com", ip: "192.168.1.1" }
            ],
            mx_records_info: [
              { name: "mail.example.com", ip: "192.168.1.2" }
            ],
            ns_note: "NS note goes here",
            mx_note: "MX note goes here"
          },
          whois_info_shown: [
            { domain_name: "example.com", registrar: "RegistrarX", creation_date: "2020-01-01", updated_date: "2021-01-01", expiration_date: "2023-01-01" }
          ],
          whois_note: "WHOIS notes..."
        },
        network_infrastructure: {
          asn_count: 2,
          shared_hosting_summary: {
            hosts: [
              { domain: "example.com", shared_with: ["shared1.com", "shared2.com"] }
            ],
            note: "Shared hosting note"
          }
        },
        subdomain_enumeration: {
          total_found: 12,
          shown: ["dev.example.com", "admin.example.com", "api.staging.example.com"],
          note: "Only showing sample subdomains"
        },
        certificate_https: {
          certificates: [
            { common_name: "example.com", valid_from: "2024-01-01", valid_to: "2025-01-01" }
          ]
        },
        exposed_assets: {
          shown: [
            {
              ip: "192.168.0.1",
              domain: "dev.example.com",
              isp: "ISP Inc.",
              risk_level: "High",
              open_ports: [
                { port: 443, module: "nginx", version: "1.18", ssl: [{ common_name: "dev.example.com", issuer: "Let's Encrypt", versions: "TLS 1.2" }] }
              ],
              vulnerabilities: [
                { title: "CVE-2023-1234", severity: "High", cvss: "8.1", description: "Remote code execution" }
              ],
              recommendation: "Update server and rotate credentials."
            }
          ],
          note: "Only one asset shown as sample."
        },
        data_leaks_and_breaches: {
          logstealer_leaks: {
            total: 1,
            shown: [["john@example.com", "123456", "http://malicious.site", "2022"]],
            note: "Sensitive leaks detected"
          },
          public_leaks: {
            total: 1,
            shown: [["jane@example.com", "password", "SomeSource", "2021"]],
            note: "Public leak info"
          },
          combo_leaks: {
            total: 1,
            shown: [["example.com", "admin@example.com", "admin123", "2020"]],
            note: "Combo list leak info"
          }
        },
        employee_information: {
          total_found: 2,
          shown: [
            { fullname: "Alice Smith", poste: "Cybersecurity Analyst" },
            { fullname: "Bob Johnson", poste: "Pentester" }
          ],
          note: "Sample employee data"
        },
        metadata_public_files: {
          files: [
            { name: "report.pdf", url: "http://example.com/report.pdf" }
          ],
          sensitive_data: []
        }
      },
      risk_assessment: {
        high_risks: ["Exposed credentials in public breaches"],
        medium_risks: ["Outdated server software"],
        info_risks: ["Wildcard subdomain detected"]
      },
      recommendations: {
        critical: [
          { area: "Credential Security", recommendation: "Rotate exposed passwords immediately." }
        ],
        important: [
          { area: "Server Maintenance", recommendation: "Upgrade nginx to latest version." }
        ],
        best_practice: [
          { area: "Employee Awareness", recommendation: "Conduct security training quarterly." }
        ]
      }
    }
  end

  def show
    @report_data = {
      title: "Reconnaissance Summary - April 2025",
      created_at: Time.now - 2.days,
      updated_at: Time.now,
      executive_summary: {
        overview: "This is a simulated overview of the attack surface.",
        targets_scope: "example.com",
        high_level_findings: "discovered 12 subdomains, identified 8 exposed assets, uncovered 3 leaked credential sets"
      },
      report_metadata: {
        report_version: "v1.0",
        generated_by: "Ala Kaddechi",
        generated_at: Time.now.strftime("%Y-%m-%d %H:%M")
      },
      methodology: [
        { task: "Subdomain Enumeration", status: "complete", description: "Discovered subdomains using multiple tools" },
        { task: "Search Leaks", status: "complete", description: "Found 3 leak sources" }
      ],
      findings: {
        domain_dns_intelligence: {
          domains: 5,
          dns_records_summary: {
            ns_records_info: [
              { name: "ns1.example.com", ip: "192.168.1.1" }
            ],
            mx_records_info: [
              { name: "mail.example.com", ip: "192.168.1.2" }
            ],
            ns_note: "NS note goes here",
            mx_note: "MX note goes here"
          },
          whois_info_shown: [
            { domain_name: "example.com", registrar: "RegistrarX", creation_date: "2020-01-01", updated_date: "2021-01-01", expiration_date: "2023-01-01" }
          ],
          whois_note: "WHOIS notes..."
        },
        network_infrastructure: {
          asn_count: 2,
          shared_hosting_summary: {
            hosts: [
              { domain: "example.com", shared_with: ["shared1.com", "shared2.com"] }
            ],
            note: "Shared hosting note"
          }
        },
        subdomain_enumeration: {
          total_found: 12,
          shown: ["dev.example.com", "admin.example.com", "api.staging.example.com"],
          note: "Only showing sample subdomains"
        },
        certificate_https: {
          certificates: [
            { common_name: "example.com", valid_from: "2024-01-01", valid_to: "2025-01-01" }
          ]
        },
        exposed_assets: {
          shown: [
            {
              ip: "192.168.0.1",
              domain: "dev.example.com",
              isp: "ISP Inc.",
              risk_level: "High",
              open_ports: [
                { port: 443, module: "nginx", version: "1.18", ssl: [{ common_name: "dev.example.com", issuer: "Let's Encrypt", versions: "TLS 1.2" }] }
              ],
              vulnerabilities: [
                { title: "CVE-2023-1234", severity: "High", cvss: "8.1", description: "Remote code execution" }
              ],
              recommendation: "Update server and rotate credentials."
            }
          ],
          note: "Only one asset shown as sample."
        },
        data_leaks_and_breaches: {
          logstealer_leaks: {
            total: 1,
            shown: [["john@example.com", "123456", "http://malicious.site", "2022"]],
            note: "Sensitive leaks detected"
          },
          public_leaks: {
            total: 1,
            shown: [["jane@example.com", "password", "SomeSource", "2021"]],
            note: "Public leak info"
          },
          combo_leaks: {
            total: 1,
            shown: [["example.com", "admin@example.com", "admin123", "2020"]],
            note: "Combo list leak info"
          }
        },
        employee_information: {
          total_found: 2,
          shown: [
            { fullname: "Alice Smith", poste: "Cybersecurity Analyst" },
            { fullname: "Bob Johnson", poste: "Pentester" }
          ],
          note: "Sample employee data"
        },
        metadata_public_files: {
          files: [
            { name: "report.pdf", url: "http://example.com/report.pdf" }
          ],
          sensitive_data: []
        }
      },
      risk_assessment: {
        high_risks: ["Exposed credentials in public breaches"],
        medium_risks: ["Outdated server software"],
        info_risks: ["Wildcard subdomain detected"]
      },
      recommendations: {
        critical: [
          { area: "Credential Security", recommendation: "Rotate exposed passwords immediately." }
        ],
        important: [
          { area: "Server Maintenance", recommendation: "Upgrade nginx to latest version." }
        ],
        best_practice: [
          { area: "Employee Awareness", recommendation: "Conduct security training quarterly." }
        ]
      }
    }
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'threat_report',
        formats: [:html],
        template: 'reports/_show',
        dispotion: 'attachment',
        page_size: 'A4'
      end
    end
  end

end
