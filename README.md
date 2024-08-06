# Ruby on Rails Mini Social Media

## Overview

This is a Ruby on Rails application that uses MongoDB for the database and Redis for caching. This guide will help you set up and run the development environment using Docker Compose.

## Prerequisites

Before you begin, make sure you have the following installed:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/ruby-on-rails-mini-social-media.git
cd ruby-on-rails-mini-social-media
```

## Build and Run the Containers

```bash
docker-compose build
docker-compose up
```

## Running Tests
To run the test suite, execute the following command:

```
docker-compose run web bundle exec rspec
```

## Remark 
you can see sample data in folder name "seed"

## example links

```
 http://localhost:3000/users
 http://localhost:3000/users/66b215c2f7c518fced355881/posts
 http://localhost:3000/posts
 
```