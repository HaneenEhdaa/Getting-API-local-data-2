# **Shows detailed information**
## Problem Statement
**Title:** Fetch employee data using Dio and implement error handling using try-catch then parse JSON responses and map them to model then cache the employee list locally.

### Description:
**General Overview:**
The application fetches employee data from an API, implements error handling, parses JSON responses, maps them to a model, and caches the employee list locally for offline use.

1. **Fetch Employee Data**  
   - Retrieve employee data from a REST API using Dio.

2. **Error Handling**  
   - Implement `try-catch` to handle API errors gracefully.

3. **Navigation Between Screens**  
   - Navigate between the list screen and details screen.
   - Pass the selected employee’s data to the details page.

4. **Loading Indicator**  
   - Show a loading spinner while fetching data.

5. **Local Caching**  
   - Cache employee data using **Shared Preferences**.
   - Load cached data when the app restarts.


## **Screens Overview**

1. **Employee List Screen**
   - Displays a list of employees.
   - Includes basic information like **name**.

2. **Employee Details Screen**
   - Displays detailed information about the selected employee, including:
     - Name
     - Email
     - Phone
     - Address