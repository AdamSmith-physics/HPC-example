import os
import sys

# Get arguments from command line
if len(sys.argv) > 1: 
    job_id = sys.argv[1] 
else:
    raise ValueError("Job ID is required as a command line argument.")

# Create data directory if it doesn't exist
if not os.path.exists('data'):
    os.makedirs('data')


text = f"""This is data saved for job {job_id} in an array example script.

I'm getting the hang of this!"""

# Save a sentence to a txt file
with open(f'data/example_{job_id}.txt', 'w') as file:
    file.write(text)
