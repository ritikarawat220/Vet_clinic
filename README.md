
## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**

<a name="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
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

<!-- PROJECT DESCRIPTION -->

# 📖 [Vet_clinic] <a name="about-project"></a>

This project involves creating a PostgreSQL database named vet_clinic with a table named animals and performing various SQL queries on it, such as filtering animals by name, date of birth, weight, and neutered status.


## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- **Database named vet-clinic**
- **Table named animal**
- **Update animal table**
- **Aggregate animal table**
- **Query multiple tables**
- **Many-to-Many relationships**
- **database performance audit**
- **database schema diagram**

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">React.js</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://expressjs.com/">Express.js</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- Storing information about animals in a vet clinic.
- Providing a user-friendly interface for adding, modifying, and querying animal data.
- Generating reports or summaries based on the animal data.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

> coming soon...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

> To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

> [Install Postgresql](https://www.postgresql.org/download/)

### Setup

Clone this repository to your desired folder:

<!--
Example commands:

```sh
  cd my-folder
  git clone git@github.com:ritikarawat220/Vet_clinic.git
```
--->


### Usage

To run the project, execute the following command:
> Copy commands and run them in PostgreSQL CLI.



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

<h4>Ritika Rawat</h4>

- GitHub: [ritikarawat220](https://github.com/ritikarawat220)
- Twitter: [@ritikarawat22](https://twitter.com/Ritikarawat22)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/rawatritika/)

👤 **Eduardo Villarreal**

- GitHub: [@evillaz](https://github.com/evillaz)
- Twitter: [@evillazz](https://twitter.com/evillazz)
- LinkedIn: [LinkedIn](https://linkedin.com/in/eduardo-villarreal-144a8925a)

👤 **Tshobohwa Salomon**

- GitHub: [@Tshobohwa](https://github.com/Tshobohwa)
- Twitter: [@SalomonTshoboh1](https://twitter.com/SalomonTshoboh1)
- LinkedIn: [@Tshobohwa](https://www.linkedin.com/in/tshobohwasalomon/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

-  Appointment scheduling
- Medication tracking..

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

- If you like this project kindly leave a Star

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- I would like to thank Microverse for giving me the opportunity to work in this project.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

- **[How can I securely connect to and authenticate with the PostgreSQL database from my application or development environment, and what libraries or frameworks can I use to simplify this process?]**

  - To securely connect to a PostgreSQL database, you will need to provide the necessary connection details (such as the host, port, database name, and authentication credentials) in your application or development environment. You can typically use a library or driver specific to your programming language or framework to handle the connection and authentication process. Some common libraries for working with PostgreSQL in different languages include psycopg2 (Python), node-postgres (Node.js), and pg (Ruby). It's important to ensure that your application uses secure authentication methods (such as password authentication or SSL/TLS encryption) to protect sensitive data. You can also configure the PostgreSQL server to restrict access and limit privileges for different users or applications.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.


<p align="right">(<a href="#readme-top">back to top</a>)</p>
