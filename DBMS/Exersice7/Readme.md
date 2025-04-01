# SQL Queries for University Database Management

This repository contains SQL scripts addressing various tasks for managing and retrieving information from a university database. The tasks range from querying data to updating records in a hypothetical database schema.

---

## Table of Contents
1. [Retrieve Courses and Grades of a Student](#1-retrieve-courses-and-grades-of-a-student)
2. [Students and Grades for Specific Course Section](#2-students-and-grades-for-specific-course-section)
3. [Course Prerequisites](#3-course-prerequisites)
4. [View for Senior CS Students](#4-view-for-senior-cs-students)
5. [Courses Taught by Professor King](#5-courses-taught-by-professor-king)
6. [Section Details for Professor King](#6-section-details-for-professor-king)
7. [Senior CS Students' Transcript](#7-senior-cs-students-transcript)
8. [Database Updates](#8-database-updates)

---

### 1. Retrieve Courses and Grades of a Student
This query retrieves the list of all courses and grades for the student named **Smith**.

---

### 2. Students and Grades for Specific Course Section
This query lists the names of students who took the **Database** course section offered in **Fall 2008** along with their grades.

---

### 3. Course Prerequisites
This query retrieves the prerequisites of the **Database** course.

---

### 4. View for Senior CS Students
This script creates a **view** to retrieve the names of all **senior students majoring in Computer Science (CS)**.

---

### 5. Courses Taught by Professor King
This query retrieves the names of all courses taught by **Professor King** in **2007** and **2008**.

---

### 6. Section Details for Professor King
This query retrieves the **course number**, **semester**, **year**, and the **number of students** enrolled in each section taught by **Professor King**.

---

### 7. Senior CS Students' Transcript
This query retrieves the **name** and **transcript** of each senior student (Class=2) majoring in CS. The transcript includes:
- Course Name
- Course Number
- Credit Hours
- Semester
- Year
- Grade

---

### 8. Database Updates
This section includes SQL update statements to perform the following operations:
- Insert a new student `<‘Johnson’, 25, 1, ‘Math’>` into the database.
- Change the class of student **‘Smith’** to **2**.
- Insert a new course `<‘Knowledge Engineering’, ‘CS4390’, 3, ‘CS’>` into the database.
- Delete the record for the student whose name is **‘Smith’** and whose student number is **17**.

---

## How to Use
1. Clone the repository to your local machine:
   ```bash
   git clone <repository-url>
