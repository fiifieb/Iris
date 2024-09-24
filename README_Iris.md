
# Iris: Personal Scheduling Tool

## Overview
**Iris** is a personal scheduling tool designed to help users efficiently organize and manage their time. Built with a SwiftUI frontend and Flask for the backend, Iris enables users to create, update, and visualize their schedule while syncing it across devices. 

## Features
- **Task Scheduling**: Easily schedule tasks and events with a user-friendly interface.
- **Custom Notifications**: Set reminders and notifications for upcoming events.
- **Cross-Platform Syncing**: Automatically sync schedules across multiple devices.
- **Visual Schedule Overview**: A visually appealing, calendar-style interface to view your schedule.
- **Backend Management**: Tasks and schedules are managed using Flask and SQLAlchemy, providing a scalable and robust backend infrastructure.

## Technologies
- **SwiftUI**: Frontend framework for building user interfaces for iOS/macOS.
- **Flask**: Backend web framework that handles user requests and API communication.
- **SQLAlchemy**: ORM (Object Relational Mapper) used for managing database operations.
- **SQLite/MySQL**: Database management for storing user schedules and events.

## Developed By
- Fiifi Botchway
- Kelly Zhang
- Jay Patel
- Sharanya Dabas
- Raymond Xu

## How it Works
1. **User Interface**: The SwiftUI-based frontend allows users to create, update, and view their schedules.
2. **Backend Integration**: The Flask backend processes user requests and interacts with the database using SQLAlchemy.
3. **Data Persistence**: User data (schedules, tasks) are stored in a database and can be retrieved, updated, or deleted upon request.
4. **Notifications**: The app sends notifications based on user-set reminders for upcoming events.

## Setup & Installation

### Prerequisites
- **iOS/macOS**: Xcode and SwiftUI setup for frontend development.
- **Python 3.x**: Flask and SQLAlchemy setup for backend development.

### Installation
1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/iris-scheduler.git
    cd iris-scheduler
    ```

2. Install the backend dependencies:
    ```bash
    pip install -r backend/requirements.txt
    ```

3. Run the Flask backend:
    ```bash
    cd backend
    flask run
    ```

4. Setup the SwiftUI frontend:
    - Open `Iris.xcodeproj` in Xcode.
    - Build and run the app on your preferred device (simulator or iPhone).

## Usage
1. **Add Events**: Use the calendar or list view to add tasks/events.
2. **Set Reminders**: Add notifications for your events to receive timely reminders.
3. **View Schedule**: Easily navigate through your schedule with a clean, visual layout.
4. **Sync Data**: Your data is synced across multiple devices via the backend service.

## Future Improvements
- **Integration with Google Calendar**: Allow users to sync Iris with external calendars.
- **AI Recommendations**: Suggest optimized scheduling times based on user behavior.
- **Team Collaboration**: Allow users to share schedules and collaborate on events.

## Contributing
If you'd like to contribute, please fork the repository and use a feature branch. Pull requests are warmly welcome.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
