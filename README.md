# One-Way Flight Booker
This backend project focuses on advanced form handling in Rails through the development of a flight booking system. It builds on MVC architecture and Active Record, applying these concepts to a real-world scenario to strengthen skills in form management and Rails applications.

## How to Run:
You must have Ruby installed. See [here](https://www.ruby-lang.org/en/downloads/) for more details. This program was written in Ruby 3.2.2. Clone this repository, navigate to the directory, and type $ bin/rails server in your terminal. Go to your browser and open http://localhost:3000, you will see the Rails app running.

## Tech Stack
- **Language:** Ruby
- **Framework:** Rails

## Features:
* Complex form elements: dropdown menus, radio buttons, and nested submissions.
* Nested forms for booking flights and adding multiple passengers.
* Database seeded manually with flight data and airport codes.

## Thoughts:
The most challenging part of this project was figuring out how to create nested associated objects for form population, properly passing nested form parameters, and understanding how their associations work together.

## Further enhancements:
* Frontend Development: Create a polished and responsive user interface for the booking system.
* API Integration: Populate available flights dynamically using external APIs for real-time flight data.
* Booking Confirmation: Add email notifications to confirm bookings for passengers.