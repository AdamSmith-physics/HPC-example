import os

print("This is a single example script.")

# Create data directory if it doesn't exist
if not os.path.exists('data'):
    os.makedirs('data')

# Save a sentence to a txt file
with open('data/example.txt', 'w') as file:
    file.write("This is an example sentence saved to a text file.")