#!/usr/bin/python3
#
# Check config files for modifications
#

import difflib
import filecmp
import os

# Function to gather all non-matching files from a directory comparision
def get_diff_files(dcmp):
    diff_files = [(dcmp.left + '/' + file, dcmp.right + '/' + file) for file in dcmp.diff_files]
    for dirname in dcmp.subdirs:
        diff_files.extend( get_diff_files( dcmp.subdirs[dirname] ) )
    return diff_files

# Function to compare two files
def compare_files(left, right):
    with open(left) as left_file:
        with open(right) as right_file:
            diff = difflib.unified_diff(left_file.readlines(), right_file.readlines(), fromfile=left, tofile=right)
            output = None
            for line in diff:
                output = output + line if output is not None else line
            return output

# Establish some paths
script_dir = os.path.dirname(__file__)
working_dir = os.path.realpath(os.path.join(script_dir, '..'))

# Read config file locations
with open(os.path.join(script_dir, 'file_locations')) as data_file:
    data = []
    for line in data_file.read().split("\n"):
        if len(line) == 0 or line[0] == '#':
            continue
        parts = line.split(';;')
        data.append((parts[0].strip(), parts[1].strip()))

# Process files
for file, location in data:
    repo_file = os.path.join(working_dir, file)
    current_file = os.path.expanduser(location)
    print('Checking ' + current_file + '... ', end='')
    
    # Nothing to check if file/directory does not yet exist
    if not os.path.exists(current_file):
        print('OK')
        continue

    if os.path.isdir(current_file):
        # Directory
        dcmp = filecmp.dircmp(repo_file, current_file)
        print_status = True
        for left, right in get_diff_files(dcmp):
            output = compare_files(left, right)
            if output is not None:
                if print_status:
                    print('NOK')
                    print_status = False
                print('--------------------------------------------------')
                print(output)
                print('--------------------------------------------------')
        if print_status:
            print('OK')
    else:
        # Regular file
        output = compare_files(repo_file, current_file)
        if output is not None:
            print('NOK')
            print('--------------------------------------------------')
            print(output)
            print('--------------------------------------------------')
        else:
            print('OK')
