import json

# Load the JSON file
with open("reports/users.json", "r") as json_file:
    users = json.load(json_file)

# Open the SQL file for writing
with open("db/seeds/users.sql", "w") as sql_file:
    for user in users:
        id = user["id"]
        username = user["username"]
        first_name = user["first_name"]
        last_name = user["last_name"]
        email = user["email"]
        avatar = user["avatar"]
        password = user["password"]

        # Write the SQL INSERT statement
        sql_file.write(
            f"INSERT INTO users VALUES({id},'{username}','{first_name}','{last_name}','{email}','{avatar}','{password}');\n"
        )

print("SQL file generated successfully!")
