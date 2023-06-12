# Vet Clinic Database

## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database.

<a name="readme-top"></a>
# 📗 Table of Contents
- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)
# 📖 Vet Clinic Database <a name="about-project"></a>

A database for a vet clinic to manage animals' information.
## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

This database is built using SQL (relational) database for postgres SQL server.

<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **Manage animal information**: Create a database to store animal details, including name, date of birth, escape attempts, neutered status, and weight.
- **Animal weight in kg**
- **Animals' neutered status**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get started with the Vet Clinic Database, follow the steps below.

### Prerequisites

In order to run this project you need:

- PostgreSQL should be installed on your machine.

### Setup

Clone this repository to your desired folder:

```sh
  cd vet_clinic
  git git@github.com:emhamza/vet_clinic.git
```
### Install

No installation required for the database. Ensure that PostgreSQL is installed and running on your machine.
### Usage

Create the database and tables by executing the following commands

Example command:

```sh
  psql -f schema.sql
```

Populate the tables with sample data by executing the following command:

```sh
  psql -f data.sql
```

Run queries on the database using the examples provided in `queries.sql`.

### Run tests
No tests available for a plain SQL database.
### Deployment

No deployment required for a plain SQL database.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="authors"></a>

👤 **Umair Hamza**

- GitHub: [@emhamza](https://github.com/emhamza)
- Twitter: [@uhamzaz](https://twitter.com/uhamzaz)
- LinkedIn: [Umair Hamza](https://www.linkedin.com/in/umair-hamza-a8262b261/)

👤 **Mussie Kahsay**

- GitHub: [@MussieTeka](https://github.com/MussieTeka)
- Twitter: [@mussieteka](https://twitter.com/mussieteka)
- LinkedIn: [@mussieteka](https://linkedin.com/in/mussieteka)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[Advanced Search and Filter]**
- [ ] **[Appointment Management]**
- [ ] **[Owners' Details]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project, show your support by giving it a ⭐️!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- [Microverse](https://www.microverse.org/)
- [PostgreSQL](https://postgresapp.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

- **Can I modify and redistribute this project?**

  - Yes, you can modify and redistribute this project as long as you follow the terms of the MIT license.

- **How can I contribute to this project?**

- Contributions, issues, and feature requests are welcome! You can check the issues page to see if there are any current issues or feature requests that you can work on. If not, feel free to submit a new issue or pull request. Before contributing, please read the CONTRIBUTING.md file for guidelines on how to contribute to this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
