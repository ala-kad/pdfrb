# PDF Report Generator

A Ruby on Rails application that generates professional PDF threat intelligence reports with customizable templates and styling.

## Overview

This application allows you to:
- Generate formatted PDF reports from HTML view template
- Customize report templates and styling
- View reports in both HTML and PDF formats
- Apply consistent branding and layout

## System Requirements

- Ruby 3.4.3
- Rails 7.x
- WSL (Windows Subsystem for Linux)
- Ubuntu 20.04.6 LTS
- VS Code with WSL extension

## Dependencies

### Gems
```ruby
gem "wicked_pdf"
gem "wkhtmltopdf-binary"
gem "tailwindcss-rails", "~> 4.2"
gem "tailwindcss-ruby", "~> 4.1"
```

## Installation

1. Clone the repository:
```bash
git clone [https://github.com/ala-kad/pdf-report-gen.git](https://github.com/ala-kad/pdfrb.git)
cd pdf-report-gen
```

2. Install dependencies:
```bash
bundle install
```


## Running the Application

Start the development server:
```bash
./bin/dev
```

The application will be available at `http://localhost:3000`

## Generating PDFs

* Click "Generate PDF" to download the report

## Development

To modify PDF styling, edit:
```
app/views/layouts/wicked_pdf.html.erb
```

To customize report templates, edit:
```
app/views/reports/_show.html.erb
```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request
