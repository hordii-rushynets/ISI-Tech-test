# Messaging System

This project is a messaging system built with Django and Django REST Framework, allowing users to create threads, send messages, and track read status.

## Features

- **Threads:** Conversations between multiple users.
- **Messages:** Users can send messages within threads.
- **Read Status:** Tracks which users have read specific messages.
- **Admin Panel:** Manage threads and messages with inline message display.
- **JWT Authentication:** Secured endpoints using `djangorestframework-simplejwt`.

## Models Overview

### Thread Model
- `participants` – Users involved in the thread.
- `created` – Timestamp when the thread was created.
- `updated` – Timestamp when the thread was last updated.

### Message Model
- `thread` – Foreign key linking the message to a thread.
- `sender` – The user who sent the message.
- `text` – Message content.
- `created` – Timestamp when the message was sent.

### Message Read Status
- `message` – Foreign key to the message.
- `user` – The user who read the message.
- `read_at` – Timestamp when the message was read.

## Installation and Setup

### Prerequisites
Make sure you have the following installed:
- **Docker** & **Docker Compose**
- **Python 3.8+** (if running outside Docker)

### Build and Run with Docker

1. **Clone the repository:**
   ```sh
   git clone https://github.com/hordii-rushynets/ISI-Tech-test.git
   cd messaging-system
   ```

2. **Build the Docker image:**
   ```sh
   docker-compose build.
   ```

3. **Start the container:**
   ```sh
   docker-compose up -d
   ```

4. **Create a superuser (optional for admin access):**
   ```sh
   docker-compose exec web python manage.py createsuperuser
   ```

5. **Restore data from database dump**
   ```sh
   docker-compose exec db bash -c "PGPASSWORD=$POSTGRES_PASSWORD pg_restore -U $POSTGRES_USER -d $POSTGRES_DB -f /backup.sql"
   ```

5. **Access the app:**
   - API: `http://localhost:8000/api/`
   - Admin Panel: `http://localhost:8000/admin/`

## API Endpoints (Use postman collection from root folder of project)

### Authentication
- `POST /api/token/` – Obtain JWT token. All users from admin have the password `super_pass`.
- `POST /api/token/refresh/` – Refresh JWT token.

### Threads
- `GET /api/threads/` – List threads for the authenticated user.
- `POST /api/threads/` – Create a new thread.
- `DELETE /api/threads/{id}/` – Delete a thread.

### Messages
- `GET /api/threads/{id}/messages/` – Get messages in a thread.
- `POST /api/threads/{id}/messages/` – Send a new message in a thread.
- `GET /api/threads/{id}/messages/unread_count/` – Get count of unread messages.

### Authorize to admin
 - username - `admin`
 - password - `super_pass`
