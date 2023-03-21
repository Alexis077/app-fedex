# README
## Introduction
App Fedex is a Rails 5.2.8.1 application built as an API that allows users to retrieve shipping rates for their Fedex shipments. The application requires Ruby '2.7.7' to be installed. Before running the application, it is important to create a `.env.development.local` file to load the environment variables.

## Installation
To install App Fedex, follow these steps:

1. Clone the repository: 

    `git clone https://github.com/Alexis077/app-fedex.git`

2. Install the required dependencies:

    `cd app-fedex bundle install`

3. Create a `.env.development.local` file with the following keys:

    ```
    export USER_CREDENTIAL_KEY=XXXXXXXXXXX
    export USER_CREDENTIAL_PASSWORD=XXXXXXXXXXX
    export ACCOUNT_NUMBER=XXXXXXXXXXX
    export METER_NUMBER=XXXXXXXXXXX
    ```
4. Run the application:

    `rails s`

## Usage
Once the application is running, users can make requests to the API to retrieve shipping rates for their Fedex shipments. To retrieve a shipping rate, a user can send a POST request to `http://localhost:3000/api/v1/rates` with the following parameters in the request body:

```json
{
    "address_from": {
        "zip": "64000",
        "country": "MX"
    },
    "address_to": {
        "zip": "64000",
        "country": "MX"
    },
    "parcel": {
        "length": 25.0,
        "width": 28.0,
        "height": 46.0,
        "distance_unit": "cm",
        "weight": 6.5,
        "mass_unit": "kg"
    }
}
```

The application will then return a response with the shipping rate for the requested shipment.

## Conclusion
App Fedex is a simple application that allows users to retrieve shipping rates for their Fedex shipments. By following the installation and usage instructions outlined above, users can easily set up and start using the application.